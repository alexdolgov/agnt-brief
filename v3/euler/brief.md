# Agentic Audit Brief: Euler

## Export Authority

- Production state: **published scope**
- Raw selected rows: 9 across 9 audit(s)
- Eligible audit results: 92 (9 matched; 83 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Euler (`euler`)
- Website: [https://www.euler.finance](https://www.euler.finance)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, base, berachain, bsc, ethereum, linea, mantle, plasma, sonic, swellchain, unichain
- Contract surface: 604 unique implementations (604 raw deployments)
- Coverage basis: 2/2 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,573,690,679.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Euler. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across bsc, ethereum, plasma, sonic, unichain. Structural roles: 2 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (2)
- Contract kinds: contract (2)
- Detected standards: accesscontrol (1), erc165 (1)
- Frameworks: openzeppelin (2), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 21 contracts are derived from known codebases. 21 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1b8c367ae56656b1d0901b2add1ad3226ff74f5a`, chain 1)
- UnnamedContract (`0x35400831044167e9e2de613d26515eee37e30a1b`, chain 1)
- UnnamedContract (`0x5171aed04fa9551db484f07c853f252bc6f53b63`, chain 1)
- UnnamedContract (`0x5fccb84363f020c0cade052c9c654aabf932814a`, chain 1)
- UnnamedContract (`0x62962b4d506b0065a133f37e19d163e5b002b655`, chain 1)
- UnnamedContract (`0x8b0e044e364f2ce913799d53b300e15a6974dc97`, chain 1)
- UnnamedContract (`0xb013be1d0d380c13b58e889f412895970a2cf228`, chain 1)
- UnnamedContract (`0xb1345e7a4d35fb3e6bf22a32b3741ae74e5fba27`, chain 1)
- UnnamedContract (`0xb3b84e8320250afe7a5fb313ee32b52982b73c53`, chain 1)
- UnnamedContract (`0xbdaa3fcc9983bd72fee0f7d017e02673896a976d`, chain 1)
- UnnamedContract (`0xbfee2d937fb9223ffd65b7cdf607bd1da9b97e59`, chain 1)
- UnnamedContract (`0xc35a0fda69e9d71e68c0d9cbb541adfd21d6b117`, chain 1)
- UnnamedContract (`0xcad001c30e96765ac90307669d578219d4fb1dce`, chain 1)
- UnnamedContract (`0xd05213331221fab8a3c387f2affbb605bb04df5f`, chain 1)
- UnnamedContract (`0xd3a349ee0a21ea0a7e9513ac236ae614b5fd513e`, chain 1)
- UnnamedContract (`0xd5b7bc743a94978d9fe6caced3f09bc194cbd471`, chain 1)
- UnnamedContract (`0xf8ef49c44cab10244de90ef79fc10131f5069b0f`, chain 1)
- UnnamedContract (`0xfb034c1c6c7f42171b2d1cb8486e0f43ed07a968`, chain 1)
- UnnamedContract (`0xfe56caa36da676364e1a0a97e4f7c07651e89b95`, chain 1)
- EulerSwapPeriphery (`0x208ff5eb543814789321daa1b5eb551881d16b06`, chain 1)
- FactoryGovernor (`0x2f13256e04022d6356d8ce8c53c7364e13dc1f3d`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 21/21 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/2 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 21 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 583 discovered implementations shown in the inventory but excluded from coverage (3 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Confirmed-live implementations: 21 of 604 unique; 583 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/109
- Verified + Unaudited implementations: 107
- Verified by bytecode match: 0
- Unverified implementations: 495
- Unique implementations: 604
- Raw deployments: 604
- Audits discovered: 81 (81 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 11 fresh, 33 aging, 35 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: 50.0% (ChainSecurity, Cyfrin, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 1 | 0.9% | 2025-03 |
| Cyfrin | Tier 1 | 1 | 0.9% | 2025-05 |
| Spearbit | Tier 1 | 1 | 0.9% | 2025-11 |
| yAudit | Tier 2 | 1 | 0.9% | 2026-02 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| EulerSwapPeriphery | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239507 | `0x208ff5eb543814789321daa1b5eb551881d16b06` | ✅ Audited |
| FactoryGovernor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239508 | `0x2f13256e04022d6356d8ce8c53c7364e13dc1f3d` | ✅ Audited |

### ⚠️ Verified + Unaudited (107)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccountLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2eed4e030dafb08f0264653d8a40f136733d8b51` | ⚠️ Unaudited |
| AztecDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xafcbe81b8122e7b6e59e6df954af3aa37cbe8362` | ⚠️ Unaudited |
| BalanceForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x52b18f2ea23b1bacf8867eef1af34916f942312f` | ⚠️ Unaudited |
| Borrowing | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x639156f8feb0cd88205e4861a0224ec169605acf` | ⚠️ Unaudited |
| CapRiskSteward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x288943b893bfc700a3fc18da65dc11871d97fba6` | ⚠️ Unaudited |
| CapRiskStewardFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x34718b85452021df5403a38ce798d80921921079` | ⚠️ Unaudited |
| ChronicleOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x420a9855fa5fe985b9a6458780214a2700e0d9c6` | ⚠️ Unaudited |
| CrossAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02dd5b7ab536629d2235276abcdf8eb3af9528d7` | ⚠️ Unaudited |
| DToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03601edc8af4b0439d63eb3a45ed11b01c6975d7` | ⚠️ Unaudited |
| EdgeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0ddcb0a765d09d86e526de7a9839398159274a63` | ⚠️ Unaudited |
| EdgeFactoryPerspective | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x546d1e3c430c712a610df311727529aa6512c7e5` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x73cb24f20ef23fd24d52969398c62ed6030c00cd` | ⚠️ Unaudited |
| ERC20BurnableMintable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2117e8b79e8e176a670c9fcf945d4348556bffad` | ⚠️ Unaudited |
| EscrowedCollateralPerspective | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x04e3657867ee511778d25981764c90fbee1c2185` | ⚠️ Unaudited |
| EscrowPerspective | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91f046e629226b2c78b84fa1537603961aead0c5` | ⚠️ Unaudited |
| EthereumVaultConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0c9a3dd6b8f28529d72d7f9ce918d493519ee383` | ⚠️ Unaudited |
| EToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x090c752b7b26d3cc382bf532ec9c4403c80d56cf` | ⚠️ Unaudited |
| Eul | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9fcd98c322942075a5c3860693e9f4f03aae07b` | ⚠️ Unaudited |
| EulDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd524e29e3baf5bb085403ca5665301e94387a7e2` | ⚠️ Unaudited |
| EulDistributorOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e3204ae99605e6ffd2bc72d765f480bf0c05b5d` | ⚠️ Unaudited |
| EulerBasePerspective | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4df63d20cb2a5faa5b9cb978089bdfccfd318c39` | ⚠️ Unaudited |
| EulerClaims | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ddce44ab524f49b4050d9d59d7cf61cda865f84` | ⚠️ Unaudited |
| EulerEarn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x253453bc43f0b961528c9cbc18a3ae3de0a4daab` | ⚠️ Unaudited |
| EulerEarnFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a20d3c0c283646e9701a049a2f8c152bc1e3427` | ⚠️ Unaudited |
| EulerEarnFactoryPerspective | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x3e6aeb84434f43c550f72d8f20982fc76a1a4b82` | ⚠️ Unaudited |
| EulerEarnVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02122afd2687ddb1dd3b9f2f2d7cc6fd422dbd05` | ⚠️ Unaudited |
| EulerEarnVaultLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0832b2a2060f878d3bf09eb3e600c982dd1e0fbf` | ⚠️ Unaudited |
| EulerFactoryPerspective | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8667082f128fa13139b859c1b40b4c8014d4a74f` | ⚠️ Unaudited |
| EulerFixedCyclicalBinaryIRMFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5151a8125b91a220ffe8fea2ab2815b46ecaaffb` | ⚠️ Unaudited |
| EulerGeneralView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacc25c4d40651676feed43a3467f3169e3e68e42` | ⚠️ Unaudited |
| EulerKinkIRMFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x34f3ecd35e05b0554b6f4ee5ba3a373add6a2538` | ⚠️ Unaudited |
| EulerKinkyIRMFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x80594d095b69c7e8ac4b9fc00da59e0504c3b9f5` | ⚠️ Unaudited |
| EulerRouterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70b3f6f61b7bf237df04589ddaa842121072326a` | ⚠️ Unaudited |
| EulerSimpleLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2d41d42939109cdcfa26c6965269d9c0220b38e` | ⚠️ Unaudited |
| EulerSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05d6c4d46a794468f282469c0e9346f121ea92ee` | ⚠️ Unaudited |
| EulerSwapFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3e378e5e339df5e0da32964f9eec2cdb90d28cc7` | ⚠️ Unaudited |
| EulerSwapManagement | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x88b077130b43a19942c641b66a50418b02d2f7d7` | ⚠️ Unaudited |
| EulerSwapProtocolFeeConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x71dfb7138192b19cdc73487212bf6bb1ffe3b9a1` | ⚠️ Unaudited |
| EulerSwapRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0601a38324d3cde22ebd531c799ad318a6b8cf93` | ⚠️ Unaudited |
| EulerUngovernedPerspective | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000d8aa9e414b9e7e7591a456ca910fb3bb05875` | ⚠️ Unaudited |
| EulStakes | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc697bb6625d9f7adcf0fbf0cbd4dcf50d8716cd3` | ⚠️ Unaudited |
| EVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x11f95aaa59f1ad89576c61e3c9cd24df1fdcf46f` | ⚠️ Unaudited |
| EVKFactoryPerspective | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x5a2164c500f4fd26ab037d97a3ed5d0774446c6b` | ⚠️ Unaudited |
| Exec | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bf04952a5b3ef6bad343c2218f584a7413bb44d` | ⚠️ Unaudited |
| Extractor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05df5bb999bac668713122b83fb5de75b6973377` | ⚠️ Unaudited |
| Fee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0009a4657c52ea648490aa06138b88ce0f46a0c9` | ⚠️ Unaudited |
| FeeFlowController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x87beecc6b609723b2ef071c20aa756846969240c` | ⚠️ Unaudited |
| FeeFlowControllerUtil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x20d7b41c7b00dedbf8eff88a3c3832b5cf299555` | ⚠️ Unaudited |
| FixedRateOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14c855046e91e91033aaff3191ea6717fb759a05` | ⚠️ Unaudited |
| FlashLoan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07df2ad9878f8797b4055230bbae5c808b8259b3` | ⚠️ Unaudited |
| GenericFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x42388213c6f56d7e1477632b58ae6bba9adeeea3` | ⚠️ Unaudited |
| GovernableWhitelistPerspective | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x232f49b73b3e1c65bccb1ff4874cadcd16eb9399` | ⚠️ Unaudited |
| Governance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04cb462a121e1799722fe84c60e790b64d5adfde` | ⚠️ Unaudited |
| GovernedPerspective | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x044dc2d44bc443c00f615cc453501f881e01e021` | ⚠️ Unaudited |
| GovernorAccessControlEmergency | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x088756eb730a08cbeb98dfe67ca74697a8a63153` | ⚠️ Unaudited |
| GovernorAccessControlEmergencyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x4f74ded1980096c44b5fee2a697b4b05ac75d987` | ⚠️ Unaudited |
| Hooks | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x1ccc20337effde5c53f2bf09eea881f568f22fde` | ⚠️ Unaudited |
| IdleTranchesOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc15ec9c88ca6fe3edd96465e7c4092e57427c62` | ⚠️ Unaudited |
| Initialize | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x653a5b70da20bdee19ee58ce671704bfb418637a` | ⚠️ Unaudited |
| Installer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x27182842e098f60e3d576794a5bffb0777e025d3` | ⚠️ Unaudited |
| IRMClassMajor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd75870dcbd1521e6cad7566fbca35d72e238572b` | ⚠️ Unaudited |
| IRMClassMega | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x894c7499f240c0e0205c56d26a5d609c8408de2d` | ⚠️ Unaudited |
| IRMClassMidCap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf058fe816b01265d1ba0a3bd226049676b107318` | ⚠️ Unaudited |
| IRMClassOHM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89e8f69c302d352d37de10019a69df4f7f959bef` | ⚠️ Unaudited |
| IRMClassStable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42ec0eb1d2746a9f2739d7501c5d5608bde9ee89` | ⚠️ Unaudited |
| IRMClassUSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd310b00523707e6b3a9ba83c3d6eac3350cf8ea` | ⚠️ Unaudited |
| IRMDefault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68004911694ec42f0c56b7144a6a5281ffdd38f7` | ⚠️ Unaudited |
| IRMLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a6bf6c5bb7301fa6731261c6cfb65df778e7743` | ⚠️ Unaudited |
| Liquidation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16fa62d8c322a6156fb5ef267342a3c7952ad23c` | ⚠️ Unaudited |
| Markets | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12401f97e2264adbf8ff98da72e3465d97b41477` | ⚠️ Unaudited |
| MeanFinanceDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23e4a1a73fd3fe3c7f8596bb74886e6c478eec59` | ⚠️ Unaudited |
| MintBurnOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1633269308f154fbecbb15f91d72d2afa6af95b4` | ⚠️ Unaudited |
| NttManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x810055eb83b59b736e27b7191d0a0abe6737f0df` | ⚠️ Unaudited |
| OFTAdapterUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bf1bd5db4457d22a85d45791b6291b98d0fc5b5` | ⚠️ Unaudited |
| OracleLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x0d5e954c12b13d4f2fea583cda3c5a50253dc1a4` | ⚠️ Unaudited |
| ProtocolConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x03dce683f0d77018b133e238cf9d4bea5360c91e` | ⚠️ Unaudited |
| PublicAllocator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x68a823a484a9d5a8dabb55c4d4d8006a45e557a9` | ⚠️ Unaudited |
| PythOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0081d84174d84ee37973fc553b2a3a0101873193` | ⚠️ Unaudited |
| RadicleToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31c8eacbffdd875c74b94b077895bd78cf1e64a3` | ⚠️ Unaudited |
| RateProviderOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x013f30a593718d962c0ceede0a66f5f9ef5451b5` | ⚠️ Unaudited |
| RedstoneCoreOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x03ed909ab6102c3f1bb9c665839ae580ac472dac` | ⚠️ Unaudited |
| Reverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a71c167d6fbdb6721f37e1d543b4baccb76a9e0` | ⚠️ Unaudited |
| Rewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x094a3bc2125f882539b0bd9c87d37ca780573305` | ⚠️ Unaudited |
| RewardsDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9839d52e964d0ed0d6d546c27d2248fac610c43` | ⚠️ Unaudited |
| RewardToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x09e6cab47b7199b9d3839a2c40654f246d518a80` | ⚠️ Unaudited |
| RiskManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00d54f129293b1580c779c8f04b2d8ce370ca69d` | ⚠️ Unaudited |
| SequenceRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x08799a00bc4a74890d65f77828cd2bfbbfcd96db` | ⚠️ Unaudited |
| SnapshotRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x01315b1fa7e8a58d641c2c7f538654fa32e0341f` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x229443bf7f1297192394b7127427db172a5bde9e` | ⚠️ Unaudited |
| Strategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x29d5fd6fc33365e24f59d6116feead98285fc06f` | ⚠️ Unaudited |
| Swap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4440a1de1fbd7f9ebead7c3dd42a44e0031f37af` | ⚠️ Unaudited |
| SwapHandler1Inch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32673daa164f4a290ae1f75ddc6aea5a2d343065` | ⚠️ Unaudited |
| SwapHandlerUniAutoRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1679029ae81da676d9b5850feb6c8ee68f9d04e` | ⚠️ Unaudited |
| SwapHub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc57d9e4a688551d99645b49126e93589d4b478c8` | ⚠️ Unaudited |
| Swapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bba09866b6f1025258542478c39720a09b728bf` | ⚠️ Unaudited |
| SwapVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x003ef4048b45a5a79d4499aabd52108b3bc9209f` | ⚠️ Unaudited |
| TermsOfUseSigner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ba11acd88b79b657bdbd00b6de759718aaadcba` | ⚠️ Unaudited |
| TimelockController | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0x51d6288ea3bc62d09c653e1eac0b70d7247e2def` | ⚠️ Unaudited |
| Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x21ed851e3b5410646c943a93e44182c1e269863b` | ⚠️ Unaudited |
| TrackingRewardStreams | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d52d06ceb8dcdeeb40cfd9f17489b350dd7f8a3` | ⚠️ Unaudited |
| TransceiverStructs | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c43ee87e5ea1652e566e40949199942fe5d5676` | ⚠️ Unaudited |
| UtilsLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x009bd94ad5fa60e676bfd3a45b5305463216a0d8` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4ad4d9c02c01b01cf586c16f01c58c73c7f0188` | ⚠️ Unaudited |
| VaultLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0058f402aaa67868a682da1bdd2e08c7aa3795ee` | ⚠️ Unaudited |
| WBTCOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc87bfc9de10b45adb6d10945f612a3de5b3e134e` | ⚠️ Unaudited |
| WithdrawalQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5e5fc568eb424ede09584c6f1d0307f4a1042d72` | ⚠️ Unaudited |
| WSTETHOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a9208bb40337ee983e2898ecb1009c763eebf5f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (495)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239506 | `0x1b8c367ae56656b1d0901b2add1ad3226ff74f5a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239509 | `0x35400831044167e9e2de613d26515eee37e30a1b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239510 | `0x5171aed04fa9551db484f07c853f252bc6f53b63` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239511 | `0x5fccb84363f020c0cade052c9c654aabf932814a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239512 | `0x62962b4d506b0065a133f37e19d163e5b002b655` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239513 | `0x8b0e044e364f2ce913799d53b300e15a6974dc97` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239514 | `0xb013be1d0d380c13b58e889f412895970a2cf228` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239515 | `0xb1345e7a4d35fb3e6bf22a32b3741ae74e5fba27` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239516 | `0xb3b84e8320250afe7a5fb313ee32b52982b73c53` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239517 | `0xbdaa3fcc9983bd72fee0f7d017e02673896a976d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239518 | `0xbfee2d937fb9223ffd65b7cdf607bd1da9b97e59` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239519 | `0xc35a0fda69e9d71e68c0d9cbb541adfd21d6b117` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239520 | `0xcad001c30e96765ac90307669d578219d4fb1dce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239521 | `0xd05213331221fab8a3c387f2affbb605bb04df5f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239522 | `0xd3a349ee0a21ea0a7e9513ac236ae614b5fd513e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239523 | `0xd5b7bc743a94978d9fe6caced3f09bc194cbd471` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239524 | `0xf8ef49c44cab10244de90ef79fc10131f5069b0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239525 | `0xfb034c1c6c7f42171b2d1cb8486e0f43ed07a968` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239526 | `0xfe56caa36da676364e1a0a97e4f7c07651e89b95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x079e485a869d2ceca0dcbb96a8308e6d972ab57f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0c34f8f5cce64ae0a437c2112f2940ed48d7923d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0cba31319e61e74e0a456b3ce56f302275b90edf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1046f26fb42113487fe54714ee1411073f060bcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x10b088eae2260e1ddedc5a3af95a6b85cfbbd384` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x11363dfe2abe41c19dd686b202837a11fd5310b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x116648401e60d4a038c8b5189150c4184f2cd80c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x16bca43290b77409e6d1c92b929f7a09c0e4ee86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1dae411addb09227f472bc0715f7deddfeb1d6df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x21bcefa8713f95cdee544d1434227970bbe0366f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x29d09fbd055b4dc42b0055787d0172c575540cfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2d09e4c7ad9c21cf093046da69030dc17d01defc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2d13c46fe6c8b6c9ad3c5a78ed51b26733cae350` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2d242ee314bd09bc4b72e8101ff8fa65a2d1216d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x301a83cf9ffbde64dbbd7f7988e900704cbca2cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x30be272d1441e9935bcbea2cd924cd5e568a052e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x31c320d720f72dd923e6d12a572271c83add60d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x32581e478819f24434bac9041542770026ce32a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x34a260811256abc5eb13be6c867197d0c0133f9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3d32ec533a9c67f149100e5c63c2a7302266fe9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3da62ca2709fcd88f3115ee933cfe0c76086e062` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3daa1ed74bb88d3562079880b24968b03efe7233` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x40739156b75b477f5b4f2d671655492b535b59d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x415e5a027fc8924dec7100473c5e7787618b5e25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4258a34923cccfa29948881cf6aa8fdad6338485` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x436571b907211a6908ebecd9383b15b2df5fd29a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x437e77c43801f4270e82a9a184b510f86c4e76cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x45af900f0da118e5d00cf267d51710ecc6708478` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4acfff8674852151c7cb0040f6a8885be02ddfdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4ba087172a616fac2f19c10021d7795a6c01a661` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4e5e9bcafea5c68e8d93cab3cf1833fc0c77b0ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x505f3214df11f3e7c7351e7c262e2ba1459fea60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x537f650a4fd350061f3c07f704f744f2c772dac5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x54900caeb949f35de5cc0b03748ee5987284730c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x56fb9f68354af7dae4e3b2067b53c498ecd053c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x58a8dc62193580879fe6f884a0487ee4e362340d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5e13d41913adf18bb2acae34228e8d21f3c2f2eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6086f1601368fcdd124ffdb6c90f9eb715bf284c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x64b356a62723a8da53f5d4c71895f76797c63a93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x65b8faec13ba76decc5dc5678bf356954ccd6823` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x69e47d24de839423a94afcd01b88c1683ba4d1d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x71620376630597fa901112821455814a31d39685` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7408034385689733f09072ff4c976c14b0211477` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x74171139d712ae64faa8cefa524e13fd52826c1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x775231e5da4f548555eee633ebf7355a83a0fc03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x77a2da1164fbf47efc32e7dd0a6cf7062c3822d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7de9b819816ee7b62c413328ab56f098014adffb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7f53e2755eb3c43824e162f7f6f087832b9c9df6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7fd287b3ae3bf2f6c9871a44b6d9de208b0abbe5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x810e333a8f14ce5ecffee3455c59acc5498f5a68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x84641751808f85f54344369036594e1a7301a414` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8e39500a6672d701616ed4943a5cc5c79ab38643` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8fa7030a7d19714dbdc5104217861af69fc05cf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8ff6da0a7c96f33690bd71f5507118033d2d7c25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x902d0856bb50cc1118c4f830b150947aad0cd70f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x90cb0b67f189a3d914da00f72070531152dbc85f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9578d17d2e1aa70ea6f9ec8a39967bfd1c6f6217` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x99075b36392874b24e71c02285b435e66bb4ba3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x996e67a00d2dd4e2ace3c507250524ac66438254` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x99e5c2ac1afc7873ee5d56671c5d076e68567658` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x99f62dbc59d89309bc3d5e9bcbd1ee8fb5383a61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9cfa82a229b78e2c39fe466b3898159ef557c9e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9d928d359646dc4249a8d57259d87673f118ec85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa1f83e3d1819c912122a1582b4b6d3d2a1e83bb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa5a9486caf3155123f8846b5478b72bdd6560bf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa64404dfd8ea52ff8da151442864c3c7c701e4a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa8826bb29f875db4c4b482463961776390774525` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa8a4f96ec451f39eb95913459901f39f5e1c068b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa99c5998c85a358c60f6169eb7c66b6d083fd196` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xabd38a64b41242d6f1565cc1702951ec46e22cb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xae4043937906975e95f885d8113d331133266ee4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaf84eeb0316a364b4194e52614a29448cd3b4933` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaf963cfd4132fd62d48e170fbdb5a596e9664def` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb236413f1a8fd4c5d5545ecaac5e64ff686afe4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb2bc0d1dce715a13c966aed067514a846f159ce9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb2e5a73cee08593d1a076a2ae7a6e02925a640ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb8092e858547a8314a6501e18fa2bfc9ab2eb578` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb86dc7f9b2810a14790f9f195a972458f833459d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xba1479c2ce19a5b53832b90922e5d93b77fb8192` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbbbc5d32fd471314c7f2d1b75c85ced246b41830` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbc0f4dd9b5a10b15e6fa65e939dbb1f98e7b08b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbe83f65e5e898d482ffaea251b62647c411576f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbe8905caad2f6a5bf84d82b23d7ac56b1c934d80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbf45dca03635518abc4256ad90aa3b3cbe24c60c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbfd019c90e8ca8286f9919df31c25bf989c6bd46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc0126de6e1615479b357e2fef6d423fb2fbee502` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc01905b032e8fb9c2256ee3cd61bd184eaa6c53a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc10801e635b1683de5d22c298f249a489319ea59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc34d06c8ec6ccdbe101f9527bf67439d42f1648a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc456d04e3f43597cc7e5a2af284ff4c4adda0cb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc511c8367be88c33c507c9ed664662cabf5cc4c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc5453e2caed696dd3393d87eae96877426486a51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc5d6a7bd57b679b1f3eac149f3356484fee38128` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc78c7dc3bec5a69ba892b237371c6c6233b98273` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xca41b476bb3c9c927b05ee5c3b9c7d1d203b4817` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcd21afeae7084d82347a7cca8e62ab6ace3df7d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd4fffc1e799e714aed1461c14e95f55b6b3390e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd561479477b03720bf485e91b76574374a646531` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd6238d3b8beed1c7f424ebf6fc1ccd7fe1b31665` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd8dec06999b0069bbc6e46fd98300427feb3e51b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe7e00170cd58c653f2d6c2b2d96b624df4b2e84d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe7ef8c7ccb6aa81e366f0a0ccd89a298d9893e83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xea19a15182a78e8fff080f79c769fbb590f4d3e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeaf30b569470f4ebd51bc480b16466dd795dc06b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xef7599ef1cb0ec48ed6f4174641462d6919a7ce2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf524f75ad063919b86d6c5d9242847a44337bfce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf7f230659f1fedd3c73e7453097b015e476a6a66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfb0d7a36998aae560e791c86a54c5c0036770258` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfbaa122cef7a83006a1cb86d750306f2388132f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfc4c3a6c173ce79eb11f6de90dd8ec717310886d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfe4e3622c632f98aaf21a08c8b83e02d994c08d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xff58973fc072dfc8f8b8890e9df79d69b80df37a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x03833b4a873ea1f657340c72971a2d0ebb2b4d82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x0fc5eedc76c51f5a518c0475947df60ee84c8100` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x13759052c3ae3d05005176c7214835bfe6da3bb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x13c4cf217903f45662593d816901d3e82c47f118` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x144f1715c673da83917b09a5b4c23e2d72c8d411` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x16f187c4efccbbf5b530a9c64447b89c4d73f3f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x1a4fa65f8ab3bf79f367efabb44e7a5b139ba02d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x1b0e3da51b2517e09ae74cd31b708e46b9158e8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x1b293efce89702c4d35dc3280509ed5018d52b92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x1ca64c84ebca945573451b322c912df60562cb2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x1d74289e6595c313e1e9640f7d1dbdfa58467f5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x21a29aeb1e7a5ffb333d50e78d15f23c3608e860` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x227cc7c2da74be56a24df0f4cdffb7f227fc86f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x2338cda64bcbf632fdbc36757d6fcd1b5b16f209` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x2a1176964f5d7cae5406b627bf6166664fe83c60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x308dbb35e11ebff4d2136fc03ebd6c729e9ebbcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x319e8ecd3bab57fe684ca1acfab60c5603087b3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x3a373af9759ac6546a6bfa6eaabb0b8fc1e1d241` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x3f4f2f1536f428d4555c232e0013d0d36a19485a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x404e1c3566acc367835c75b20e9554aaa16b0e77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x41329e4f1a855971cf15250a956a89dd953acbab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x413cf25a789784e07a428d7fb1e0b43eef84a4b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x41a11d85577bb21743e11eca62e2b241dc1ed5c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x41cb9d21a85bc0d3c05d1140ccb90b36592ee8f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x42b95cccb6eddfa4377512f660abfaf30544675c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x4357d531b3ac8c246bdc71982d8b14612fd8b486` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x441f98bea2f68ac242a38af062af7bd5ad4b61b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x443f99fa0142080add8707119f513916ff2cb5cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x44d781d9f61649faceeec919c71c8537531df027` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x45b146bc07c9985589b52df651310e75c6be066a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x49a5918ccc21f8252281acf622f2c564d8f711d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x49eb1c5b56aa221965c3130d472ac9318f01f934` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x50eea1510bf6c7a272f5f38a299c26b9cf48a383` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x521e9a23ada57fdfaa4c6272ef26c2c4fe0c0ee8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x578e67b1fd10afeaca3fc9ec70458fb457698a95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x5aeca7b7bdd4c876ed88e33da7bad45cb7224b12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x658d92670e33750598db4f2f8a03a330b32f2b7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x6725657ecf5f7cc46d1e848376b4db92d71d0d96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x6f46ebe5b9680dfbeb97d8282e2a20cf22102ddb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x70c77ca278feb671fe95b71591eae5f02fc7795f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x71d7250732591c41d1bdeb1ea0ee730e138e0c8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x7cc1320a14c0cb11732761ecd116989bd3c6d339` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x7eaf8c22480129e5d7426e3a33880d7be19b50a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x805c408e8afabb4d44b39b838f0586617993043a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x846eab6dff1c9ec3ebeb44708d8328be0fe570de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x8ff133534b42f9d3b36beb940c48a4910c8fd2da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x9138aba3239f450407e2ed943693945ffa1877cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x9173c5a4af659347e02933a48f48eae9c7df69c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x966a99e20182008afba017bf1eeff6d5ae393ad4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x990bb5d21cc852687bf95b850a279daf9b6c45d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x994898e67539df565f1590b6799f7fee77822533` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x9adf1b464abc8e067dba760825407ea53f197ab7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x9d9ce1540b986ef77c02f8d40603193852d2e723` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x9efeac4498d1fa78b750307c2a918ff491a111de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xa06b923a85d96c62205fa007435e375e9d0ce31f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xa26075c2ab0c7271d01c771d0ec7208d4870418b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xa4be228d480914196d45ed3f30e9a9cc1e182629` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xa55b7e0a40ca2401a403e74e76a1301882960352` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xad335516c6e17815d9dd543fbcdfe325f8563e13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xb0308e5be786f4ffc4df3e902ca42c3d68f9fcd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xb30e10a985a6ee12eff57f172ef6404524c3210b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xb6f38e310443b869799f9c2fbd58a4749bf7c3d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xbad8b5bdfb2bcbcd78cc9f1573d3aad6e865e752` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xc0a8dfa92cb9ff9f503803d3bae2cf19e9c15411` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xc7850044db632b35e664f6cf3177fd7404ca5dbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xcab8bbe881a13a513770746af15f7cc884843734` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xcbb3e1ac57c0ad51ab2a74d3f3da067be03a7b27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xd40dd19ed88a949436f784877a1bb59660ee8de3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xd785add5f081f56616898e45b90de307e3dc7d3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xd91b0bfaca4691e6aca7e0e83d9b7f8917989a03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xda2778d143862f7c930eb71297b018209711eedd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xdaaf468d84dd8945521ea40297ce6c5eefc7003a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xdad370c74a9fe7e6bfd55de69baf81060e51eab4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xdc0d3e9119d4ccb7e186e699d1df5cdd7bca5783` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xdcd02e4ea8cd273498d315ad8c047305f8480656` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xdf3009390d10dc18a8f8b42402f1541c7235dfb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xe4af668dbf63ce31a645df56982fe73ab81ded98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xe551288f0d82c10bbf517dba66e15c60bf87fe8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xe62d322f1108ef3ed26e5744ef5d08e18c0b418d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xe65099f561974ea4bdd7c45c91ec456d3d62a25a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xe9878336e83d44c367fb82b85285c26fcf249c4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xe9c43e09c5fa733bcc2aeaa96063a4a60147aa09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xea96ed6896ab1f00e4fc28c75d8e6655e56cef85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xec475c94f6d0cee5210a31bf59794886e88c1654` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xeef6cf66abbd88fe97bee236aac21285158f3a3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xefd9f447b35af280110975bcfa442050ef283d86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xf00cce0a6fb4fd94d3b0f5d7a309422fb55e9910` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xf211d70ed785f0e981e9f3188804af43734502f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xf6269d9f38e3b4f93f7e68f41d8ea06abe3ef7b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xfafc7b37d6389919e5142c8b63203602cb2a5a92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xfbd12fbc91311a8f17598b935e35205eaf16aa75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xfc6701e4678cd5a788be59afd874b5aacec122d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xfd45d1256f01ae273d32aa227b36fc25cc358785` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xfe663df83a3209035abdfda7bf4c867442c0fa8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xfff627cdfeb9d3ad57d788baf69c8743457d87c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0250917ae8c612ba47275af7d591e1eb1d121799` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x05e539f6d47a46501550859e35703f7bbc0fba16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x08588b9f6dd69ada2648fc48cac6c9349db9e904` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0afddc99e980a46f1dc481e1b59e0634dc5b27f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0e44629b6cd146a525507f995bfb335045e1e6a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0ef612f0612fcddc3d436ad52f68794ecd55b130` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x167d99033e23af10ede483205d7c02238726ad68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x16cbaa18631d308ef7860dd8441744e043bacafd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1c266a986b6afa7eba68263c5323a0bf0fe4f2a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1f76c9bee85245704f53adf032614a868b1b0e97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x25262cf05b20e46b8d4e6b40574350994e667b02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x262761d43309ba3b05c240cd8825d3689e600ef3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x27a6f897ae7c17cb731217c79feea5baa8c29e63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2a75a1d4e4bba15e74693141f8d75f206bfa2967` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2a7c5d115f5f1b3f113cc7f75f4652f0b7324e3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2c1bc59f07af5d3dfa556bbae60179b54de27b4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2cb79cda6bb09a901177d5227b4aa1584dbcfc9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2e88157b63965e5775f1f7a095a6b09d1ff9acdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2ff8658a0cede4cb155e3b2864b6c8dc0930cc34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x31aa74232a0b0e50e5bf95780b2116710a34c7e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x324f4c98ab86cac73fe6a2d0decc6b0bb73ede11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3397ec7d28cf645a017869fe4b41c75f5b0b75a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3bd2b8f04c9c04c0322127ccf683c6b288bd27b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3d6ffa08a81d6c6f506733a6cb8c264c1585d134` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3e9c05d9e384b18cd964e52b1fe232bcfdd19625` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x41833712ad47d2dfe9bf7c980124ded2a8dcf0c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x426345a95db1001a54e8cc8dbc8b8eb3770bcb6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x46d23b2d948b159859a5bb9c96c3190f4b43ebb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4860c903f6ad709c3eda46d3d502943f184d4315` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4c7ba548032fe3ea11b7d6beaf736b3b74f69248` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4d57f54582b333e4184a3cf40d1d61fe6d70c35d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4d7f051f7f4b5bb59e8c82390045f4f3c967a17f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4e4e524613d840d2d30b694f363b5b1931e82a75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4f3563108400b53dc0442a436949a2ba4706fa4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4f51fbd2161fc5e41295b866cb42a08e7ea39a25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x506173b8cf867c2c5a54057b1908b7c202148027` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x52e856790779fd4fca34ba52c67cd191338572c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x56a39f7907ca26d87f8183193528d74503ef9b11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x575e3aa8243ad6cd7cea1cd2c36f5e577b1f745c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x59361d3d6577f59066dbda3f56988c0dfba34d81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x59a3c9f50d1357b06eda2f40e2e57db03988b05f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5d403c8ad3300b0cb689ea243336f4d39d0e4dae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x650737bf472588a04530494189c3c30eaf5f6c50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x65f7d2208e7ac3c19af7e48643fee1cc0533588f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x69d2403d9a0715cdc89acb015ec2afb200c4f6bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x69ea21940d6e4c832ac5e3ddbd9d57e0c89835e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6b0d4efa46bc7f8f17e9b1aa30132d426907ebe1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6c2b515289e367fbd013a5e7df5c6a92aa4776f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6ed14a85cef0048c57cb13c2eb5435ea723e8123` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6f417aaec1d41db692307269acda019ce5f10b0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x770500ee92d2c395aa39f2c573a08d78d5ff8090` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7f88d04368002282c7709fdf89cb28779b32bcf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x811debb6eecf205f469c87883bf4b95b41533961` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x82b27b528da0516e653e02e5f870853d22cbc6df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8376be41ca7d2a5e98d3c58daf2d6d142036993e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x84354221a6c432a9907f4d0777d8e794646206da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x85678469e789fe90e051953b926b77d6e76cd571` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8653d1b50aa6adaad64dc140588dbc8c11141581` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8820db193191cc0f50f72ed030d08e4d49984c91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8aed4bba0d94ef8fad644e663e7d0a65da216828` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8d089d7b8af57be845ff79cf51288f716ff9c945` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8d936d2cee67e6c6c3b69752fb5113f9c8c2ce0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8d9427171f0092093c68315045dc1f6030d1af51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8e15c8d399e86d4fd7b427d42f06c60cdd9397e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x93478469b049e75b8d20b6d2c5a8da84e35f14d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x93fd7a2b4e6bea3c35d06468a7bd7b0ea202d075` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x94041db6dec15f79666b07846c13e6f7341b4a80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x999f22bbe3e7e0a77da73470ffd6c76adfb7644c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x99cf844584bbfa12e6b76a9fd3c08c2dd99f87c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9a75b862fd7fe841a946dc6850580b544988ea70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9c2441ed05a948bf5e3d681ee0e318a261a1d366` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9e4aa838518da34942bca07ae327b5046a427dd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9e54bf56f4e5219a7d5a4386255b1943d01b6f36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9ea47747f72f2aadcf3c2250cec820c47bed03f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa48c5e0d336b2c15eed66ca6d023328b957c631d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa4b01212c0e54c3f920d3216d63ebd9b87aab375` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa546d41f25349905e8329943d42ba9f00073edea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa5f5b253d0fd9d0fa79078540ac7e56299ef65c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa6fa437c4da8089e83c81c1c0c1c494d327261dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa8ba1b304ada6a7e4bcc8814071e905712f2e3ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa912262ba05d9c0233d6d652bab6810cb2405972` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xac1935c4fb440fca308c96f667715487f5257fb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xad1318be83422229b64f8e94c0ed5724e4388ce6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xaf21d9674cdc8adb2ac184ac1fbfa372a7b19180` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb1459436d523670a75da06d211bd747dc8c5ef2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb2237dc86b184e50fc2f8b028b2b7ae192ef2566` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb5b5eff94d2b12c36198e64d18415b645fdb66b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb70dbfbbab2b9f01a86b397f0954bea2eaf3bce5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xbaf5b12c92711a3657dd4ada6b3c7801e83bb56a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xbb3c87743126f6cd025569be8af89aeb43384ef1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xbd0d0fe1d6f655aad80b360f46390d876f2d278f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xbee37396ec92741af92e1ffdf09aa586a7fcbaa4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc11085f6f3ba3c685502c8a99669240e8e450a20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc16f26f5edb152b99443468fd85b9f41e4ac8ac3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc2f9fe90bd17e017898b6efdaa73c34fddde299e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc32f6c8423d4c90d4e29fb62832c3ddfdedfc12e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc3a705ea6e339a53a7d301d3c5d7e6f499a9366a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc5b9b95a769c24c18c344c2659db61a0adfb736e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc61844b8f46633f7607046362a9c892aabceee3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc815aa507142c341241de03a7309d8569704424f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc8eb6dd027c4ab1754245f6fde91b39090c12add` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc8f6b4b88643c0d48f202b1d1ff68711aaa0101a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xcb9e591a4c18aa34eedc35d85207866d324f9ff2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xcd8ec919fc57de598240c7016b33a79ad6ee7f4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xce024b83071737bfd5588b9f56913a3e69b8684a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xcec866898d475f32cbe74ab9cb76448a6b557bc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xcfe702b937687a9c9c93e794edfef435d8d8486b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd10aa71e7baec97c397829bedb5a3504546fe149` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd1fcc98baf6ba852b360091870969ff12416fbb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd3cf3ec3d7849f2c7bb9ff5a8662ae36a177beb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd6a38bcd04a5b1d836944a98600e8c1343eb32eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd8cf0f2020d247c6be290acf592c0dcc922f0440` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe05bb9159c4b663c9a56320c5aa96a59560c5bbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe46ae79a7f006f065eb969a3118362e4546dfb83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe5beeaadd7b35ed4f9f8d519323236698a4866b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe6e4687c35429942391afe42cddecba857531492` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe82f78560a2a15561f2a6778295b0c55048b6053` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe83a3ba3d2d04b6bfeea198e27d2f6ca7e125ba1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xec11cf1f08cf7778f2909f532ad7e40e38da85a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xec54cd8b27db6e1c070bcb392bd8cd1217c1647a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xeea7d36b365090328d76afa63c54d9c7baf53aa5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xeef91153b27fabf42a2f88e753285d0afb736d09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xefe3f05a2270b1d0739f3ed517127a3d1a70b97a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf075cc8660b51d0b8a4474e3f47edac5fa034cfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf62820b7e0146cc436d99f962450c5cddca3db35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf6fc02bfef0e901b50657dc64ff1506d1f331fdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xfa3cb94caacf86ba6ca0ee4280a4ce81a6403a8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xfa866d311b27ea9a3c53a1e74582f9e2e0ba7753` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xfae81a4c626cdd898a1eaef14e81cc97e958308d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x006cd100e2516ab544dbb49471f7f9334516027e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x00d7a88d77083f4334620da883568374a0159a12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x026db6032232222c1cecac29583f39ff53cb62db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x040223cce60d8641df9183ddb7b4876b60aafbf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x0c2b7b97eda745faaaae9865911dce782b5f53fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x0c60f630608a1406f5b049093b25032598b3dc4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x13d830b7a5402c54744def5445db0dc9abbd2233` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x1415c23e24786112a7f8d02a8366b6ae4d082380` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x1472ebb000190275b5e28733e45a2614f1c3f41c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x167ae35ac63b2662bc8c67248321c779abead195` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x187da6612c5b2c1819e6f40742e48be989f0fb26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x18a8969ac4c07c8a18e17a099c917bec3810a091` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x20bcf29622b5239eeee752e6959fc9b31201aa42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x23fd93a4ac2a0d87785acd925bcfeba550006327` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x289e5901a38da333c854c41be9bef8ce3933ecac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x29fafdbf952e7b5c0a6cd26957829334d54e872a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x2bbed1f1bbddb8a48fbe9918d3e06963ba5e2b38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x31977ccb2922f664008af8fe9c1e751b16f40564` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x31bf69f94440bfe53a484196875d5330fdb181f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x32a5d8f25f3a9076adde5d047575caac766b1eaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x3478dc49e49d50c362a1212d534aba0376aa566d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x3541a516288f04ba8eea256b9cf32388f1733c83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x35e815ac40456bf14614f11a281fd09fcab19bee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x363ae824c3c9a21cde6f62c7e9b84bc2b18f213a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x386b523db1df3ca4699623ec0962075c92b320fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x39519f45db90bd568a14fce20894cfd71082441a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x3cf6e4c11333b30f0d0ceae6b78f53a660df357c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x3d26e96babab4757ef657e7db87d6ca7542baebb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x3f147400c5c8a64328fa93fb69b21a2ac0a60af7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x419730b755c6e76b42d2cad9a2674a8dc748da38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x43d5a7b90d667d73c84d22784bb3d856db7888f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x4e2f910af7e935c3a1bf2a1d7865dad926f591a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x546983a4536f204a5b420f5cfa32a671dec6acad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x585bb13eedd1818058688fd525f87cb669e73eff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x586471dae0aee957e053399347b23efd0a69ed74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x593ab8a0182f752c6f1af52ca2a0e8b9f868f64a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x59e8bd99802f4eb774dffe2be2bec38ad08d6c16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x5b472d42ac8d5ccd812fb7e9a4d7e32a1083a3e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x5c179de1b6551bf1210fb737e6f2452e933faa9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x60d1966db195934459b9d36470314644041ff56a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x60fa1710e2104ecec69cec7c33b96bd705c4dd34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x6106d4dc3a2ea3ccef9cdabd1b57a71843f7d9e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x61734a012d9bbf0b71e34b523286258213b4b19d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x620de2184a863571c3e38539d602ffe57180d5a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x62ff27a1fbe6024d2933a88d39e0ff877db4fe0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x657dc306282291423dc5dfaf80ae8c842513b06d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x667ad135188d95a32a4e743aebe5a5b503cb9038` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x66b3bf9d8187227799809065bf7d1e2b8b784607` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x677c1a9c7e12e9426c02acf23c71ec5bc8d7309a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x6886246cc3164c2d08522dc8d14aab355b316fa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x6c30179767c7ccd5dd164889f89b0d6b2f97d372` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x6c72e825d37323f711bac4adaae275ba5e3aeaf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x6e6e1e4fb3ee6c074f10d3f80e0d3541accf7c2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x71e71342809dad014ad87bb07e9cc046b66af48b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x730a68b4dfd36b804a6466678059b838632f1cf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x7410093b5bf326d1193db00acd105b2947de4d76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x741fc7a904c9f810cbc4a21de7d07b51b5da853c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x788fbbbde2a29d8c8b6abd6590387faccf2f9285` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x78f50c520e7fce30410516b72a48bd4fc5d974b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x7a8bc44db0311a8216ca39e56ee7f458a71baaf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x7b7d06316e4764749375603955c5195401c17832` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x7bdbd0a7114aa42ca957f292145f6a931a345583` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x7d9db6f09d48ea484fe1a7d981e1be2f93aca43a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x7e539159a06cfe0a9f855d22dd82ad95edf8c2f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x7f6ff62e7eced715a2f4e5ebe14ec9d32a44efdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x806107a55e23c957b046edd0809b4306db54c266` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x8120916856e8c021eddb86bce77e4d0875da0694` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x81618f99777d1855281959d1860701f50a9863ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x82e391144b0eb8eda23d1ccdc1b7effb20742bc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x8346bebaa0789eb92cffcc07033b8bf9f3efdcab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x84fd34e9dd12f8d6cb884f93277d146bdbdf35b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x871ddf24b484503e84f36103f7d0268c2d8b25d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x8787ce8f852abc9b928589d830e21d0e7c4080ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x8844013c5db717c480f2bbb8bbd588707ff0a48f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x8890148a2d8f6e3cee111ff641ca7ccd859f5f54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x891f8e66b23514f075ab68b38ef3eb3cdb022c8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x89990c6aabbe9327a4ebd454cdcbe59b0ac8b886` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x8b8ce23c9bbb2c26ba322ec1aa266baf6226ccc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x8d6a81ec8f5680849dcfba47c710dd9da02adaea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x8ec298b473d17e04f819453c72747c3d4d6b7848` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x9050e86837cfbac1a6d79be84428ccbd7f7a7520` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x91ff343154ba22e4609943f36db59a5c6d427089` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x927bdb1c4966f45b5394ca6b366467e279f2f006` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x939ca204c892932aa91810eee50253a0427dd33d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x984f25135bec8fcaba26a6005c1632bc0dccfd7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x9c6ba8cde995e753bae3b559737b6ec9534565a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x9e8f95254332519124cc43549124ecedd8826b88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xa1e475efb83e5196c3026283f33a1535ba1d3c83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xa269918388e3824b5b9316c20c8d5f9d558b73ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xa3843a73e6a9f81309b931237ca4759b3b02ff0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xa38ad00f1f4d49d667233935b055c22900d9066e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xa4d3a7a4e56ecb154127a0f18b1850c2d1dbfab0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xaa4d0e9cf7dc27d38dcedf0ae29eb7ae69d6f01f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xaa8b9729a047568cb0614165509229a86e345be1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xacd19b80db7af45bddd5fd58dbc5dfe194137db6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xad8ba4cb64692b0584e775ab406cf16ccbca1e3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xad9ed33315c8bf601c0a8cf34cf6e3ca93a2144d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xaea0de17c8b1be60b2949b7f17482ebe681f93df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xaeb21572bf619b2a80d1bc2cfbfaefaa4532dcc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xaf491be94131129cc74f73d739f01aed92d10ea4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xb0b3d2dd2467509aa5eaf873366a38638e77c943` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xb360587d4e998f5f740524cf2bf703e51c06bfe3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xb695c0ac484f46dd8f279452209b8c53674974bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xbb6c58cf5cb0ffd1a1acbb2b3b482015dba07a1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xbcc714f3ce3f56ab4a85a10d593cf9c93ed6ed9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xbd3840ec2a74ff4d0d97374bbe3a89ae72491255` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xbd62c2db0e21e4b9ee81701f130417b8400ec854` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xc203f5deb8d2d138f4e53a1783deba079ca64ab0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xc55f6e262fe21da068ece5d3fa015d8451baf625` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xc59f5a9645ad68f3736fe7af69fc9306cdf75403` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xc6ecf3e1a72b9298a1eb3616fb36194e873bcec1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xc92a47a62322914472eace515cd1c5dac31fca37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xca5854510fc2e82d1e15550e6509bb0ea697bf32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xca632fa58397391c750c13f935daa61abbe0baa6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xcaab6e473766c5ac75117df3663aa96eee3e89c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xcb80af483eca49e5ca7d4dba2f24d01e9f0be289` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xcc78f99e98b1461949bdb1b76d58372ed8c24530` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xd170477ece944fc3911e4e18c6b5371853bf0b58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xd180db1eb7c781ac0a085cce59582b02ee3ececd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xd29492ade8660727bce621d4926a05461322520d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xd4b56a6a91f374e437b8cddedabfc1c9e3f7668f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xd77c086143e9177d929b17964672d44cbc1e88d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xd7aa03104c2ccac58acb00cbe90865fa64bbe77d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xdadbb7a06638e3345a341002e956324a46d1c28c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xdb4bd54647169b0d2b0414efe943a92b6b8e9886` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xdde4337001de1bd44c64ad472406a856a236e6cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xe0ddb3b94104757865fe5165a59ae55767573ea9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xe2011f2bf6556863c3bace991efc8dac26cd84c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xe5f18b8e25e60f74d627fddc6805ec3cbe853573` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xe5f7889ca0cf16926eb73a523ea364b8539aaf87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xe7581a54ebecc02b42a9c0b4044abc9bb75a502d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xe76985858f67248b898810ec42052e72c532c73c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xe808f79a516868d6eae6dc84863fdf383c88b04e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xe8947cfd3f04e686741f7dd9023ec0c78588fd33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xed6bcb3d0aa98a3635cea0f2ac8f5df897941552` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xef8f018e94f358adfa934b9287324e02fd89bac4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xf71396d7b4bb8d50b7b0e4ae88dc6360fad28f58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xfa71c252b89395823eba21b6a5eb58d85556ef4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xfc86d1a7c8cf37fc1cb27bcaaa218cf93bf4985d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xfdb6d727785485f87cabec64204cd7ebc930ef11` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 476
- Live contracts: 0
- Unknown liveness contracts: 476
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=476

Showing first 200 of 476 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| bsc | unverified unclassified | UnnamedContract<br>`0x079e485a869d2ceca0dcbb96a8308e6d972ab57f` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0c34f8f5cce64ae0a437c2112f2940ed48d7923d` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0cba31319e61e74e0a456b3ce56f302275b90edf` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1046f26fb42113487fe54714ee1411073f060bcd` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x10b088eae2260e1ddedc5a3af95a6b85cfbbd384` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x11363dfe2abe41c19dd686b202837a11fd5310b3` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x116648401e60d4a038c8b5189150c4184f2cd80c` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x16bca43290b77409e6d1c92b929f7a09c0e4ee86` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1dae411addb09227f472bc0715f7deddfeb1d6df` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x21bcefa8713f95cdee544d1434227970bbe0366f` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x29d09fbd055b4dc42b0055787d0172c575540cfe` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2d09e4c7ad9c21cf093046da69030dc17d01defc` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2d13c46fe6c8b6c9ad3c5a78ed51b26733cae350` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2d242ee314bd09bc4b72e8101ff8fa65a2d1216d` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x301a83cf9ffbde64dbbd7f7988e900704cbca2cb` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x30be272d1441e9935bcbea2cd924cd5e568a052e` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x31c320d720f72dd923e6d12a572271c83add60d5` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x32581e478819f24434bac9041542770026ce32a7` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x34a260811256abc5eb13be6c867197d0c0133f9d` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3d32ec533a9c67f149100e5c63c2a7302266fe9f` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3da62ca2709fcd88f3115ee933cfe0c76086e062` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3daa1ed74bb88d3562079880b24968b03efe7233` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x40739156b75b477f5b4f2d671655492b535b59d2` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x415e5a027fc8924dec7100473c5e7787618b5e25` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4258a34923cccfa29948881cf6aa8fdad6338485` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x436571b907211a6908ebecd9383b15b2df5fd29a` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x437e77c43801f4270e82a9a184b510f86c4e76cf` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x45af900f0da118e5d00cf267d51710ecc6708478` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4acfff8674852151c7cb0040f6a8885be02ddfdb` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4ba087172a616fac2f19c10021d7795a6c01a661` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4e5e9bcafea5c68e8d93cab3cf1833fc0c77b0ef` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x505f3214df11f3e7c7351e7c262e2ba1459fea60` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x537f650a4fd350061f3c07f704f744f2c772dac5` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x54900caeb949f35de5cc0b03748ee5987284730c` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x56fb9f68354af7dae4e3b2067b53c498ecd053c6` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x58a8dc62193580879fe6f884a0487ee4e362340d` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5e13d41913adf18bb2acae34228e8d21f3c2f2eb` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6086f1601368fcdd124ffdb6c90f9eb715bf284c` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x64b356a62723a8da53f5d4c71895f76797c63a93` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x65b8faec13ba76decc5dc5678bf356954ccd6823` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x69e47d24de839423a94afcd01b88c1683ba4d1d0` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x71620376630597fa901112821455814a31d39685` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7408034385689733f09072ff4c976c14b0211477` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x74171139d712ae64faa8cefa524e13fd52826c1b` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x775231e5da4f548555eee633ebf7355a83a0fc03` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x77a2da1164fbf47efc32e7dd0a6cf7062c3822d7` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7de9b819816ee7b62c413328ab56f098014adffb` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7f53e2755eb3c43824e162f7f6f087832b9c9df6` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7fd287b3ae3bf2f6c9871a44b6d9de208b0abbe5` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x810e333a8f14ce5ecffee3455c59acc5498f5a68` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x84641751808f85f54344369036594e1a7301a414` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8e39500a6672d701616ed4943a5cc5c79ab38643` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8fa7030a7d19714dbdc5104217861af69fc05cf3` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8ff6da0a7c96f33690bd71f5507118033d2d7c25` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x902d0856bb50cc1118c4f830b150947aad0cd70f` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x90cb0b67f189a3d914da00f72070531152dbc85f` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9578d17d2e1aa70ea6f9ec8a39967bfd1c6f6217` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x99075b36392874b24e71c02285b435e66bb4ba3d` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x996e67a00d2dd4e2ace3c507250524ac66438254` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x99e5c2ac1afc7873ee5d56671c5d076e68567658` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x99f62dbc59d89309bc3d5e9bcbd1ee8fb5383a61` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9cfa82a229b78e2c39fe466b3898159ef557c9e7` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9d928d359646dc4249a8d57259d87673f118ec85` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa1f83e3d1819c912122a1582b4b6d3d2a1e83bb7` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa5a9486caf3155123f8846b5478b72bdd6560bf7` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa64404dfd8ea52ff8da151442864c3c7c701e4a1` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa8826bb29f875db4c4b482463961776390774525` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa8a4f96ec451f39eb95913459901f39f5e1c068b` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa99c5998c85a358c60f6169eb7c66b6d083fd196` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xabd38a64b41242d6f1565cc1702951ec46e22cb9` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xae4043937906975e95f885d8113d331133266ee4` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xaf84eeb0316a364b4194e52614a29448cd3b4933` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xaf963cfd4132fd62d48e170fbdb5a596e9664def` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb236413f1a8fd4c5d5545ecaac5e64ff686afe4e` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb2bc0d1dce715a13c966aed067514a846f159ce9` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb2e5a73cee08593d1a076a2ae7a6e02925a640ea` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb8092e858547a8314a6501e18fa2bfc9ab2eb578` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb86dc7f9b2810a14790f9f195a972458f833459d` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xba1479c2ce19a5b53832b90922e5d93b77fb8192` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbbbc5d32fd471314c7f2d1b75c85ced246b41830` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbc0f4dd9b5a10b15e6fa65e939dbb1f98e7b08b7` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbe83f65e5e898d482ffaea251b62647c411576f1` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbe8905caad2f6a5bf84d82b23d7ac56b1c934d80` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbf45dca03635518abc4256ad90aa3b3cbe24c60c` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbfd019c90e8ca8286f9919df31c25bf989c6bd46` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc0126de6e1615479b357e2fef6d423fb2fbee502` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc01905b032e8fb9c2256ee3cd61bd184eaa6c53a` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc10801e635b1683de5d22c298f249a489319ea59` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc34d06c8ec6ccdbe101f9527bf67439d42f1648a` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc456d04e3f43597cc7e5a2af284ff4c4adda0cb1` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc511c8367be88c33c507c9ed664662cabf5cc4c4` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc5453e2caed696dd3393d87eae96877426486a51` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc5d6a7bd57b679b1f3eac149f3356484fee38128` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc78c7dc3bec5a69ba892b237371c6c6233b98273` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xca41b476bb3c9c927b05ee5c3b9c7d1d203b4817` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xcd21afeae7084d82347a7cca8e62ab6ace3df7d5` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd4fffc1e799e714aed1461c14e95f55b6b3390e8` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd561479477b03720bf485e91b76574374a646531` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd6238d3b8beed1c7f424ebf6fc1ccd7fe1b31665` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd8dec06999b0069bbc6e46fd98300427feb3e51b` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe7e00170cd58c653f2d6c2b2d96b624df4b2e84d` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe7ef8c7ccb6aa81e366f0a0ccd89a298d9893e83` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xea19a15182a78e8fff080f79c769fbb590f4d3e9` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xeaf30b569470f4ebd51bc480b16466dd795dc06b` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xef7599ef1cb0ec48ed6f4174641462d6919a7ce2` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf524f75ad063919b86d6c5d9242847a44337bfce` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf7f230659f1fedd3c73e7453097b015e476a6a66` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xfb0d7a36998aae560e791c86a54c5c0036770258` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xfbaa122cef7a83006a1cb86d750306f2388132f3` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xfc4c3a6c173ce79eb11f6de90dd8ec717310886d` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xfe4e3622c632f98aaf21a08c8b83e02d994c08d4` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xff58973fc072dfc8f8b8890e9df79d69b80df37a` | non_address_book | unknown | unknown | unverified | n/a | `0x1feae4c90573d8bacee6891f228d85389bdbb94c` |
| plasma | unverified unclassified | UnnamedContract<br>`0x006cd100e2516ab544dbb49471f7f9334516027e` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x00d7a88d77083f4334620da883568374a0159a12` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x026db6032232222c1cecac29583f39ff53cb62db` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x040223cce60d8641df9183ddb7b4876b60aafbf8` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x0c2b7b97eda745faaaae9865911dce782b5f53fd` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x0c60f630608a1406f5b049093b25032598b3dc4a` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x13d830b7a5402c54744def5445db0dc9abbd2233` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x1415c23e24786112a7f8d02a8366b6ae4d082380` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x1472ebb000190275b5e28733e45a2614f1c3f41c` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x167ae35ac63b2662bc8c67248321c779abead195` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x187da6612c5b2c1819e6f40742e48be989f0fb26` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x18a8969ac4c07c8a18e17a099c917bec3810a091` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x20bcf29622b5239eeee752e6959fc9b31201aa42` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x23fd93a4ac2a0d87785acd925bcfeba550006327` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x289e5901a38da333c854c41be9bef8ce3933ecac` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x29fafdbf952e7b5c0a6cd26957829334d54e872a` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x2bbed1f1bbddb8a48fbe9918d3e06963ba5e2b38` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x31977ccb2922f664008af8fe9c1e751b16f40564` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x31bf69f94440bfe53a484196875d5330fdb181f5` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x32a5d8f25f3a9076adde5d047575caac766b1eaf` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x3478dc49e49d50c362a1212d534aba0376aa566d` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x3541a516288f04ba8eea256b9cf32388f1733c83` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x35e815ac40456bf14614f11a281fd09fcab19bee` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x363ae824c3c9a21cde6f62c7e9b84bc2b18f213a` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x386b523db1df3ca4699623ec0962075c92b320fb` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x39519f45db90bd568a14fce20894cfd71082441a` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x3cf6e4c11333b30f0d0ceae6b78f53a660df357c` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x3d26e96babab4757ef657e7db87d6ca7542baebb` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x3f147400c5c8a64328fa93fb69b21a2ac0a60af7` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x419730b755c6e76b42d2cad9a2674a8dc748da38` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x43d5a7b90d667d73c84d22784bb3d856db7888f5` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x4e2f910af7e935c3a1bf2a1d7865dad926f591a8` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x546983a4536f204a5b420f5cfa32a671dec6acad` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x585bb13eedd1818058688fd525f87cb669e73eff` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x586471dae0aee957e053399347b23efd0a69ed74` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x593ab8a0182f752c6f1af52ca2a0e8b9f868f64a` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x59e8bd99802f4eb774dffe2be2bec38ad08d6c16` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x5b472d42ac8d5ccd812fb7e9a4d7e32a1083a3e1` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x5c179de1b6551bf1210fb737e6f2452e933faa9f` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x60d1966db195934459b9d36470314644041ff56a` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x60fa1710e2104ecec69cec7c33b96bd705c4dd34` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x6106d4dc3a2ea3ccef9cdabd1b57a71843f7d9e3` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x61734a012d9bbf0b71e34b523286258213b4b19d` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x620de2184a863571c3e38539d602ffe57180d5a7` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x62ff27a1fbe6024d2933a88d39e0ff877db4fe0b` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x657dc306282291423dc5dfaf80ae8c842513b06d` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x667ad135188d95a32a4e743aebe5a5b503cb9038` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x66b3bf9d8187227799809065bf7d1e2b8b784607` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x677c1a9c7e12e9426c02acf23c71ec5bc8d7309a` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x6886246cc3164c2d08522dc8d14aab355b316fa1` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x6c30179767c7ccd5dd164889f89b0d6b2f97d372` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x6c72e825d37323f711bac4adaae275ba5e3aeaf1` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x6e6e1e4fb3ee6c074f10d3f80e0d3541accf7c2b` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x71e71342809dad014ad87bb07e9cc046b66af48b` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x730a68b4dfd36b804a6466678059b838632f1cf1` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x7410093b5bf326d1193db00acd105b2947de4d76` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x741fc7a904c9f810cbc4a21de7d07b51b5da853c` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x788fbbbde2a29d8c8b6abd6590387faccf2f9285` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x78f50c520e7fce30410516b72a48bd4fc5d974b5` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x7a8bc44db0311a8216ca39e56ee7f458a71baaf8` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x7b7d06316e4764749375603955c5195401c17832` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x7bdbd0a7114aa42ca957f292145f6a931a345583` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x7d9db6f09d48ea484fe1a7d981e1be2f93aca43a` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x7e539159a06cfe0a9f855d22dd82ad95edf8c2f1` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x7f6ff62e7eced715a2f4e5ebe14ec9d32a44efdc` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x806107a55e23c957b046edd0809b4306db54c266` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x8120916856e8c021eddb86bce77e4d0875da0694` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x81618f99777d1855281959d1860701f50a9863ad` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x82e391144b0eb8eda23d1ccdc1b7effb20742bc1` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x8346bebaa0789eb92cffcc07033b8bf9f3efdcab` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x84fd34e9dd12f8d6cb884f93277d146bdbdf35b5` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x871ddf24b484503e84f36103f7d0268c2d8b25d3` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x8787ce8f852abc9b928589d830e21d0e7c4080ee` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x8844013c5db717c480f2bbb8bbd588707ff0a48f` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x8890148a2d8f6e3cee111ff641ca7ccd859f5f54` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x891f8e66b23514f075ab68b38ef3eb3cdb022c8c` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x89990c6aabbe9327a4ebd454cdcbe59b0ac8b886` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x8b8ce23c9bbb2c26ba322ec1aa266baf6226ccc0` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x8d6a81ec8f5680849dcfba47c710dd9da02adaea` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x8ec298b473d17e04f819453c72747c3d4d6b7848` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x9050e86837cfbac1a6d79be84428ccbd7f7a7520` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x91ff343154ba22e4609943f36db59a5c6d427089` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x927bdb1c4966f45b5394ca6b366467e279f2f006` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x939ca204c892932aa91810eee50253a0427dd33d` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x984f25135bec8fcaba26a6005c1632bc0dccfd7c` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x9c6ba8cde995e753bae3b559737b6ec9534565a6` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0x9e8f95254332519124cc43549124ecedd8826b88` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |
| plasma | unverified unclassified | UnnamedContract<br>`0xa1e475efb83e5196c3026283f33a1535ba1d3c83` | non_address_book | unknown | unknown | unverified | n/a | `0x3f1297da87bf2b4c819f7d888fd81095f8daa57e` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Learn more](https://cantina.xyz/bounties/4d285eee-602e-440a-845e-25e155cec26a) | Spearbit | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [Pashov_Audit_Group_report.pdf (also discovered via alternate URL)](https://github.com/euler-xyz/euler-earn/blob/master/audits/Pashov_Audit_Group_report.pdf) | Pashov Audit Group | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Certora_EulerEarn_report.pdf](https://github.com/euler-xyz/euler-earn/blob/master/audits/Certora_EulerEarn_report.pdf) | Certora | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Sigma_Prime_EulerEarn_report.pdf](https://github.com/euler-xyz/euler-earn/blob/master/audits/Sigma_Prime_EulerEarn_report.pdf) | Sigma Prime | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Rendered PDF capture](https://raw.githubusercontent.com/euler-xyz/euler-earn/b2fd6e699ee20bcfe7459f375b3cee5d2fa53345/audits/Certora_EulerEarn_report.pdf) | Spearbit | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Rendered PDF capture](https://raw.githubusercontent.com/euler-xyz/euler-earn/b2fd6e699ee20bcfe7459f375b3cee5d2fa53345/audits/Sigma_Prime_EulerEarn_report.pdf) | Spearbit | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Omniscia Euler Earn Report](https://omniscia.io/reports/euler-finance-earn-yield-aggregator-66faae519dcc3c0018b9097e) | Enigma Ventures | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [Certora EulerEarn](https://github.com/euler-xyz/euler-earn/blob/master/audits/Certora%5FEulerEarn%5Freport.pdf) | Pashov Audit Group | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Sigma Prime EulerEarn](https://github.com/euler-xyz/euler-earn/blob/master/audits/Sigma%5FPrime%5FEulerEarn%5Freport.pdf) | Sigma Prime | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Cyfrin EulerSwap](https://github.com/euler-xyz/euler-swap/blob/master/audits/2025-05-26-cyfrin-eulerswap-v2.0.pdf) | Cyfrin | Audit | 2025-05 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 9 | high |
| [Cantina Managed EulerSwap May 3](https://github.com/euler-xyz/euler-swap/blob/master/audits/report-cantinacode-uniswap-euler-0422.pdf) | Spearbit | Audit | 2025-05 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 8 | high |
| [| March 31, 2025 | EulerSwap | ChainSecurity | [ChainSecurity EulerSwap ]() | (also discovered via alternate URL)](https://github.com/euler-xyz/euler-swap/blob/master/audits/ChainSecurity_EulerSwap_audit.pdf) | ChainSecurity | Audit | 2025-03 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 4 | high |
| [Cantina Managed EulerSwap Mar 29](https://github.com/euler-xyz/euler-swap/blob/master/audits/report-euler-swap-050325.pdf) | Spearbit | Audit | 2025-03 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 3 | medium |
| [Fuzzland EulerSwap](https://github.com/euler-xyz/euler-swap/blob/master/audits/eulerswap-audit-report.pdf) | Spearbit | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [report-cantinacode-euler-0901.pdf](https://github.com/euler-xyz/euler-swap/blob/master/audits/report-cantinacode-euler-0901.pdf) | Spearbit | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [yAudit ERC4626 and Vault Securitize Report](https://github.com/euler-xyz/evk-periphery/blob/master/audits/yAudit%20ERC4626%20and%20Vault%20Securitize.pdf) | yAudit | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [Pashov Group ERC4626 and Vault Securitize Report](https://github.com/euler-xyz/evk-periphery/blob/master/audits/Pashov%20Group%20ERC4626%20and%20Vault%20Securitize.pdf) | Pashov Audit Group | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [| 2 December 2024 | EVK Periphery - ERC20 Burnable Mintable | BailSec | [BailSec ERC20BurnableMintable Report]() |](https://github.com/euler-xyz/evk-periphery/blob/master/audits/BailSec%20ERC20BurnableMintable.pdf) | Spearbit | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [| 1 June 2025 | EUL ERC20 | BailSec | [BailSec EUL ERC20 Report]() |](https://github.com/euler-xyz/evk-periphery/blob/master/audits/BailSec%20EUL%20ERC20.pdf) | BailSec | Audit | 2025-06 | aging | Direct | address | no match | 0 | 0 | 0 | 1 | high |
| [| 11 March 2026 | EVK Periphery (Oracle, Hook, SwapVerifier) | BailSec | [BailSec EVK Periphery Oracle Hook SwapVerifier Report]() |](https://github.com/euler-xyz/evk-periphery/blob/master/audits/BailSec%20EVK%20Periphery%20Oracle%20Hook%20SwapVerifier.pdf) | BailSec | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [| 1 August 2025 | HookTargetMarketStatus | CD Security | [CD Security HookTargetMarketStatus Report]() |](https://github.com/euler-xyz/evk-periphery/blob/master/audits/CD%20Security%20HookTargetMarketStatus.pdf) | CD Security | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [CDSecurity ERC20 Wrapper Locked.pdf (also discovered via alternate URL)](https://github.com/euler-xyz/evk-periphery/blob/master/audits/CDSecurity%20ERC20%20Wrapper%20Locked.pdf) | CDSecurity | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [| 5 February 2025 | Adaptive IRM | Electisec | [Electisec Adaptive IRM Report]() |](https://github.com/euler-xyz/evk-periphery/blob/master/audits/Electisec%20Adaptive%20IRM.pdf) | Electisec | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [| 14 October 2025 | ERC20Synth & Auxiliary Contracts | Electisec | [Electisec ERC20Synth and Auxiliary Contracts Report]() |](https://github.com/euler-xyz/evk-periphery/blob/master/audits/Electisec%20ERC20Synth%20and%20auxiliary%20contracts.pdf) | Spearbit | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [| 11 March 2025 | GovernorAccessControlEmergencyFactory | Electisec | [Electisec GovernorAccessControlEmergencyFactory Report]() |](https://github.com/euler-xyz/evk-periphery/blob/master/audits/Electisec%20GovernorAccessControlEmergencyFactory.pdf) | MixBytes | Audit | 2025-03 | aging | Direct | address | no match | 0 | 0 | 0 | 4 | high |
| [| 22 April 2025 | CapRiskSteward | MixBytes | [MixBytes CapRiskSteward Report]() |](https://github.com/euler-xyz/evk-periphery/blob/master/audits/MixBytes%20CapRiskSteward.pdf) | MixBytes | Audit | 2025-04 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 0 | high |
| [| 22 April 2025 | HookTargetStakeDelegator | MixBytes | [MixBytes HookTargetStakeDelegator Report]() |](https://github.com/euler-xyz/evk-periphery/blob/master/audits/MixBytes%20HookTargetStakeDelegator.pdf) | MixBytes | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Paladin LayerZero Adapters.pdf](https://github.com/euler-xyz/evk-periphery/blob/master/audits/Paladin%20LayerZero%20Adapters.pdf) | Paladin | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [| 14 October 2025 | ERC20Synth & Auxiliary Contracts | Spearbit | [Spearbit ERC20Synth and Auxiliary Contracts Report]() |](https://github.com/euler-xyz/evk-periphery/blob/master/audits/Spearbit%20ERC20Synth%20and%20auxiliary%20contracts.pdf) | Spearbit | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [| 13 June 2025 | IRMLinearKinky | Supremacy | [Supremacy IRMLinearKinky Report]() |](https://github.com/euler-xyz/evk-periphery/blob/master/audits/Supremacy%20IRMLinearKinky.pdf) | Supremacy | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [| 18 October 2024 | EVK Periphery - custom liquidator & selector access | yAudit | [yAudit EVK Custom Liquidator & Selector Access Control Report]() |](https://github.com/euler-xyz/evk-periphery/blob/master/audits/yAudit%20EVK%20Custom%20Liquidator%20%26%20Selector%20Access%20Control.pdf) | yAudit | Audit | 2024-10 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 6 | high |
| [| 8 August 2024 | EVK Periphery - Vault Pause Guardian | yAudit | [yAudit - EVK Periphery - Vault Pause Guardian Report]() |](https://github.com/euler-xyz/evk-periphery/blob/master/audits/yAudit%20EVK%20Periphery%20Guardians.pdf) | yAudit | Audit | 2024-08 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 3 | high |
| [| 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() |](https://github.com/euler-xyz/evk-periphery/blob/master/audits/yAudit%20EVK%20Periphery.pdf) | yAudit | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 27 | high |
| [| 20 September 2024 | EVK Periphery Forta Firewall hooks | yAudit - Forta Firewall Attestation hooks | [yAudit - EVK Periphery - Forta Firewall hooks Report]() |](https://github.com/euler-xyz/evk-periphery/blob/master/audits/yAudit%20Euler%20Hook%20Target%20Firewall.pdf) | yAudit | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [yAudit SwapVerifier update.pdf (also discovered via alternate URL)](https://github.com/euler-xyz/evk-periphery/blob/master/audits/yAudit%20SwapVerifier%20update.pdf) | yAudit | Audit | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [yAudit rEUL ERC20 Wrapper Locked.pdf (also discovered via alternate URL)](https://github.com/euler-xyz/evk-periphery/blob/master/audits/yAudit%20rEUL%20ERC20%20Wrapper%20Locked.pdf) | yAudit | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [yAudit_Euler_Deployment_Polygon_Avalanche_Report.pdf (also discovered via alternate URL)](https://github.com/euler-xyz/evk-periphery/blob/master/audits/yAudit_Euler_Deployment_Polygon_Avalanche_Report.pdf) | yAudit | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Euler Rescue StrategyEuler07 November 2025 - 12 November 2025](https://cantina.xyz/portfolio/e77dbffc-abd5-46d6-9367-48fec99e0ab2) | Spearbit | Audit | 2025-11 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Euler - PR111Euler26 October 2025 - 28 October 2025](https://cantina.xyz/portfolio/f145854a-327f-4f2c-a8bf-f61f95ae23dd) | Spearbit | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 7 | medium |
| [euler-swapEuler25 April 2025 - 29 April 2025](https://cantina.xyz/portfolio/05b16317-997e-4b78-8316-acb656e2a0e2) | Spearbit | Audit | 2025-04 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 8 | high |
| [| 18 February 2025 | EPO (PR#78, PR#79) | Electisec | [Electisec EPO Report]() |](https://github.com/euler-xyz/euler-price-oracle/blob/master/audits/Euler_Price_Oracle_Electisec_Report.pdf) | Electisec | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [| 4 February 2025 | setLTV | Electisec | [Electisec setLTV Report]() |](https://github.com/euler-xyz/euler-vault-kit/blob/master/audits/Electisec_setLTV_report.pdf) | Electisec | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [| 20 January 2025 | EVK | Cantina | [M4rio.eth SetLTV Report]() |](https://github.com/euler-xyz/euler-vault-kit/blob/master/audits/M4rio.eth_setLTV_report.pdf) | Spearbit | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [| 5 September 2024 | EPO | yAudit | [yAudit EPO Update review Report]() |](https://github.com/euler-xyz/euler-price-oracle/blob/master/audits/Euler_Price_Oracle_yAudit_OracleUpdate_Report.pdf) | yAudit | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [| 8 July 2024 | Euler V2 | yAudit | [yAudit CodeCompetition Fixes review]() | (also discovered via alternate URL)](https://github.com/euler-xyz/ethereum-vault-connector/blob/master/audits/Euler%20yAudit%20Code%20Competition%20Fixes%20report.pdf) | yAudit | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high|medium |
| [| 20 July 2024 | Origami Oracle Adapters | yAudit | [yAudit Origami Oracle Adapters Report]() |](https://github.com/euler-legacy-xyz/origami-oracle-adapters/blob/main/audits/yAudit_origami_oracles.pdf) | yAudit | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [| 14 June 2024 | Synths | OpenZeppelin | [OpenZeppelin Synths Report]() |](https://github.com/euler-xyz/euler-vault-kit/blob/master/audits/OpenZeppelin_Synths_report.pdf) | OpenZeppelin | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [| 9 May 2024 | Reward Streams | Mixbytes | [Mixbytes Reward Streams Report]() |](https://github.com/euler-xyz/reward-streams/blob/master/audits/Euler%20MixBytes%20report.pdf) | MixBytes | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [| 1 May 2024 | Reward Streams | Hunter Security | [Hunter Security Reward Streams Report]() |](https://github.com/euler-xyz/reward-streams/blob/master/audits/Euler%20Hunter%20Security%20report.pdf) | MixBytes | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [| 29 April 2024 | EPO | ChainSecurity | [ChainSecurity Oracle Report]() |](https://github.com/euler-xyz/euler-price-oracle/blob/master/audits/Euler_Price_Oracle_ChainSecurity_Report.pdf) | ChainSecurity | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [| 22 April 2024 | Euler V2 | Cantina CodeCompetition | [Cantina CodeCompetition Report]() | (also discovered via alternate URL)](https://github.com/euler-xyz/ethereum-vault-connector/blob/master/audits/Euler%20Cantina%20Code%20Competition%20report.pdf) | Spearbit | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | medium |
| [| 8 April 2024 | EVC | ChainSecurity | [ChainSecurity EVC Report]() |](https://github.com/euler-xyz/ethereum-vault-connector/blob/master/audits/Euler%20ChainSecurity%20report.pdf) | ChainSecurity | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [| 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() |](https://github.com/euler-xyz/euler-vault-kit/blob/master/audits/Spearbit_EVK_report.pdf) | Spearbit | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 46 | medium |
| [| 8 April 2024 | EPO | Spearbit | [Spearbit EPO Report]() |](https://github.com/euler-xyz/euler-price-oracle/blob/master/audits/Euler_Price_Oracle_Spearbit_Report_DRAFT.pdf) | Spearbit | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 19 | high |
| [| 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() |](https://github.com/euler-xyz/euler-vault-kit/blob/master/audits/OpenZeppelin_EVK_report.pdf) | OpenZeppelin | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 52 | high |
| [| 8 April 2024 | EPO | OpenZeppelin | [OpenZeppelin Oracle Report]() |](https://github.com/euler-xyz/euler-price-oracle/blob/master/audits/Euler_Price_Oracle_OpenZeppelin_Report.pdf) | OpenZeppelin | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 18 | high |
| [| 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() |](https://github.com/euler-xyz/euler-vault-kit/blob/master/audits/yAudit_EVK_report.pdf) | yAudit | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 86 | high |
| [| 18 March 2024 | EVC | Omniscia | [Omniscia EVC Report]() |](https://omniscia.io/reports/euler-finance-ethereum-vault-connector-6602c8d3423c1b0018ff01b6) | yAudit | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [| 18 March 2024 | EVK | Omniscia | [Omniscia EVK Report]() |](https://omniscia.io/reports/euler-finance-vault-kit-66000e2fe7dba400187a4aed) | Omniscia | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [| 18 March 2024 | EPO | Omniscia | [Omniscia EPO Report]() |](https://omniscia.io/reports/euler-finance-evk-price-oracles-660812035fc1c30018641b22) | Omniscia | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [| 18 March 2024 | EVC | OpenZeppelin | [OpenZeppelin EVC Report]() |](https://github.com/euler-xyz/ethereum-vault-connector/blob/master/audits/Euler%20OpenZeppelin%20report.pdf) | OpenZeppelin | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [| 7 March 2024 | EVK | Certora | [Certora EVK Report]() |](https://github.com/euler-xyz/euler-vault-kit/blob/master/audits/Certora_EVK_report.pdf) | OpenZeppelin | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 39 | high |
| [| 19 February 2024 | FeeFlow | Ottersec - FeeFlow | [Ottersec FeeFlow Report]() |](https://github.com/euler-xyz/fee-flow/blob/main/audits/FeeFlow%20Ottersec%20Report.pdf) | Ottersec | Audit | 2024-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [| 12 February 2024 | FeeFlow | Team Omega | [Team Omega FeeFlow Report]() |](https://github.com/euler-xyz/fee-flow/blob/main/audits/FeeFlow%20Team%20Omega%20Report.pdf) | Team Omega | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [| 6 February 2024 | FeeFlow | Zellic | [Zellic FeeFlow Report]() |](https://github.com/euler-xyz/fee-flow/blob/main/audits/FeeFlow%20Zellic%20Report.pdf) | Zellic | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [EnigmaDark_EVK_report.pdf](https://github.com/euler-xyz/euler-vault-kit/blob/master/audits/EnigmaDark_EVK_report.pdf) | Enigma Ventures | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [Euler Trail of Bits report.pdf](https://github.com/euler-xyz/ethereum-vault-connector/blob/master/audits/Euler%20Trail%20of%20Bits%20report.pdf) | Trail of Bits | Audit | 2024-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Euler Hunter Security report.pdf](https://github.com/euler-xyz/ethereum-vault-connector/blob/master/audits/Euler%20Hunter%20Security%20report.pdf) | Hunter Security | Audit | 2024-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Euler yAudit report (EVC).pdf](https://github.com/euler-xyz/ethereum-vault-connector/blob/master/audits/Euler%20yAudit%20report%20(EVC).pdf) | yAudit | Audit | 2023-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Euler Certora report.pdf](https://github.com/euler-xyz/ethereum-vault-connector/blob/master/audits/Euler%20Certora%20report.pdf) | Certora | Audit | 2023-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Cantina_competition_report.pdf](https://github.com/euler-xyz/euler-vault-kit/blob/master/audits/Cantina_competition_report.pdf) | Spearbit | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 11 | medium |
| [ChainSecurity_EVK_report.pdf](https://github.com/euler-xyz/euler-vault-kit/blob/master/audits/ChainSecurity_EVK_report.pdf) | ChainSecurity | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 62 | high |
| [Omniscia_EVK_report.pdf](https://github.com/euler-xyz/euler-vault-kit/blob/master/audits/Omniscia_EVK_report.pdf) | Omniscia | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 51 | high |
| [yAudit_competition_fixes_report.pdf](https://github.com/euler-xyz/euler-vault-kit/blob/master/audits/yAudit_competition_fixes_report.pdf) | yAudit | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [Euler_Price_Oracle_BailSec_Report.pdf](https://github.com/euler-xyz/euler-price-oracle/blob/master/audits/Euler_Price_Oracle_BailSec_Report.pdf) | BailSec | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Euler_Price_Oracle_Omniscia_Report.pdf](https://github.com/euler-xyz/euler-price-oracle/blob/master/audits/Euler_Price_Oracle_Omniscia_Report.pdf) | Omniscia | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [Euler_Price_Oracle_yAudit_PendleOracle_Report.pdf](https://github.com/euler-xyz/euler-price-oracle/blob/master/audits/Euler_Price_Oracle_yAudit_PendleOracle_Report.pdf) | yAudit | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Euler_Price_Oracle_yAudit_Report.pdf](https://github.com/euler-xyz/euler-price-oracle/blob/master/audits/Euler_Price_Oracle_yAudit_Report.pdf) | yAudit | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 86 | high |
| [Euler Omniscia report.pdf](https://github.com/euler-xyz/ethereum-vault-connector/blob/master/audits/Euler%20Omniscia%20report.pdf) | Omniscia | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Euler Spearbit report.pdf](https://github.com/euler-xyz/ethereum-vault-connector/blob/master/audits/Euler%20Spearbit%20report.pdf) | Spearbit | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Euler yAudit report (EVC + EVK + Price Oracle).pdf](https://github.com/euler-xyz/ethereum-vault-connector/blob/master/audits/Euler%20yAudit%20report%20(EVC%20%2B%20EVK%20%2B%20Price%20Oracle).pdf) | yAudit | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 86 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17249] Learn more — no match: The document is a bug bounty program description, not an audit report. It lists repositories in scope but no specific contract names or file paths. The extracted names are the repository/module names. No audit date is present.
- [17251] Pashov_Audit_Group_report.pdf — no match: Scope section explicitly lists EulerEarn.sol, EulerEarnFactory.sol, PublicAllocator.sol, ConstantsLib.sol, ErrorsLib.sol, EventsLib.sol, PendingLib.sol, SafeERC20Permit2Lib.sol, UtilsLib.sol, and interfaces/ directory. Audit date from timeline: July 25th 2025 - July 30th 2025, end date used.
- [17252] Certora_EulerEarn_report.pdf — no match: Scope explicitly lists src/libraries/** (library files), src/EulerEarn.sol, src/EulerEarnFactory.sol, src/PublicAllocator.sol. Libraries are included as a glob pattern but no specific library names are given. Audit date is July 2025, with work from June 26 to July 15, 2025; end date used.
- [17253] Sigma_Prime_EulerEarn_report.pdf — no match: Scope explicitly lists three contracts: EulerEarn.sol, EulerEarnFactory.sol, PublicAllocator.sol. Libraries are mentioned but not individually named. Audit date is July 2025, mapped to last day of month.
- [17254] Rendered PDF capture — no match: Scope explicitly lists src/libraries/** (not extracted as individual contracts), src/EulerEarn.sol, src/EulerEarnFactory.sol, src/PublicAllocator.sol. Audit date from 'July 2025' and work period ending July 15, 2025.
- [17255] Rendered PDF capture — no match: Scope section lists three contracts: EulerEarn.sol, EulerEarnFactory.sol, PublicAllocator.sol. Libraries/* mentioned but not individually named. Date from cover page: July, 2025 -> last day of month.
- [17257] Omniscia Euler Earn Report — no match: Only one contract name 'Earn' is mentioned as the module name, but no specific file paths or contract names are listed in the scope section. The audit date is inferred from the latest commit hash date (October 23rd 2024).
- [17259] Certora EulerEarn — no match: Scope explicitly lists src/libraries/** (library files), src/EulerEarn.sol, src/EulerEarnFactory.sol, src/PublicAllocator.sol. Libraries are not named individually. Audit date from 'July 2025' and work period ending July 15, 2025.
- [17260] Sigma Prime EulerEarn — no match: Scope explicitly lists three contracts: EulerEarn.sol, EulerEarnFactory.sol, PublicAllocator.sol, and libraries/* (but libraries are not extracted as individual contracts). Audit date is July 2025, mapped to last day of month.
- [17261] Cyfrin EulerSwap — matched: Scope section lists 10 Solidity files. Audit date is May 26, 2025 from cover page.
- [17262] Cantina Managed EulerSwap May 3 — matched: Extracted contract names from findings context and file references. No explicit scope section found; date from cover page.
- [17263] | March 31, 2025 | EulerSwap | ChainSecurity | [ChainSecurity EulerSwap ]() | — matched: Scope section explicitly lists 5 source files. Audit date from cover page: 'Mar 31, 2025'.
- [17264] Cantina Managed EulerSwap Mar 29 — matched: No explicit scope section found; contracts inferred from findings context and file references. Audit date from cover page: March 29, 2025.
- [17265] Fuzzland EulerSwap — no match: Only one contract (EulerSwap) is in scope. The report mentions 'src/*.sol' and specifically references EulerSwap.sol. No other contracts are listed.
- [17267] report-cantinacode-euler-0901.pdf — no match: Extracted contract names from findings context and file references. Audit date from cover page.
- [17268] yAudit ERC4626 and Vault Securitize Report — no match: All 8 contracts explicitly listed in scope section 1.2 with file paths. Audit date from cover page: 'November 21, 2025'.
- [17269] Pashov Group ERC4626 and Vault Securitize Report — no match: Scope section explicitly lists 9 Solidity files. Audit date is the end date of the timeline: November 8th 2025.
- [17270] | 2 December 2024 | EVK Periphery - ERC20 Burnable Mintable | BailSec | [BailSec ERC20BurnableMintable Report]() | — no match: Only one contract in scope: ERC20BurnableMintable. Audit date inferred from 'December 2024' on cover page.
- [17271] | 1 June 2025 | EUL ERC20 | BailSec | [BailSec EUL ERC20 Report]() | — no match: Only one contract (Eul) is in scope. OpenZeppelin dependencies are explicitly excluded. Date inferred from 'June 2025' as end of month.
- [17272] | 11 March 2026 | EVK Periphery (Oracle, Hook, SwapVerifier) | BailSec | [BailSec EVK Periphery Oracle Hook SwapVerifier Report]() | — no match: Three contracts explicitly listed in scope: ChainlinkInfrequentOracleXStocks, HookTargetTermsOfUse, SwapVerifier. Audit date inferred from 'March ‘2026' in header.
- [17273] | 1 August 2025 | HookTargetMarketStatus | CD Security | [CD Security HookTargetMarketStatus Report]() | — no match: Audit report title indicates August 2025; scope explicitly lists DataStreamsVerifier.sol and HookTargetMarketStatus.sol.
- [17274] CDSecurity ERC20 Wrapper Locked.pdf — no match: Only one contract in scope: ERC20WrapperLocked.sol. Audit date inferred from 'October2024' in header and 'euler.md2024-11-04' in findings (likely a typo, but October 2024 is the audit period). Using last day of October 2024.
- [17275] | 5 February 2025 | Adaptive IRM | Electisec | [Electisec Adaptive IRM Report]() | — no match: Scope section explicitly lists three contracts. Audit date is the end date of the second review period (February 4-5, 2025).
- [17276] | 14 October 2025 | ERC20Synth & Auxiliary Contracts | Electisec | [Electisec ERC20Synth and Auxiliary Contracts Report]() | — no match: All 7 contracts listed in the Audit Scope section with file paths.
- [17277] | 11 March 2025 | GovernorAccessControlEmergencyFactory | Electisec | [Electisec GovernorAccessControlEmergencyFactory Report]() | — no match: Scope includes one source file and six deployed contract instances across Base and Ethereum.
- [17278] | 22 April 2025 | CapRiskSteward | MixBytes | [MixBytes CapRiskSteward Report]() | — matched: Only one contract in scope: CapRiskSteward. Audit date from cover page.
- [17279] | 22 April 2025 | HookTargetStakeDelegator | MixBytes | [MixBytes HookTargetStakeDelegator Report]() | — no match: Only one contract in scope: HookTargetStakeDelegator. Audit date from cover page.
- [17280] Paladin LayerZero Adapters.pdf — no match: Three contracts explicitly listed in 'Contracts Assessed' table on page 4. Audit date found on cover page: '23 January 2025'.
- [17281] | 14 October 2025 | ERC20Synth & Auxiliary Contracts | Spearbit | [Spearbit ERC20Synth and Auxiliary Contracts Report]() | — no match: Extracted contracts from the audit report of Euler EVK Periphery PR 361. The report mentions 'evk-periphery' as the scope, and the findings reference specific contracts. The audit date is October 14, 2025 from the cover page.
- [17282] | 13 June 2025 | IRMLinearKinky | Supremacy | [Supremacy IRMLinearKinky Report]() | — no match: Only one contract in scope: IRMLinearKinky. Audit date from cover page.
- [17283] | 18 October 2024 | EVK Periphery - custom liquidator & selector access | yAudit | [yAudit EVK Custom Liquidator & Selector Access Control Report]() | — matched: Scope explicitly listed contracts for Custom Liquidators and Selector Access Control features, and separately for FactoryGovernor.sol. Audit date inferred from review period end date (October 21st, 2024).
- [17284] | 8 August 2024 | EVK Periphery - Vault Pause Guardian | yAudit | [yAudit - EVK Periphery - Vault Pause Guardian Report]() | — matched: Scope section explicitly lists four contracts under src/Governor and src/HookTarget. Audit date from review summary: Aug 8 to Aug 9, 2024.
- [17285] | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() | — no match: All contracts listed in the Scope section of the report were extracted. The audit date is the end date of the review period (June 26, 2024).
- [17286] | 20 September 2024 | EVK Periphery Forta Firewall hooks | yAudit - Forta Firewall Attestation hooks | [yAudit - EVK Periphery - Forta Firewall hooks Report]() | — no match: Only one contract in scope: HookTargetFirewall. Audit performed 17-18 September 2024, so end date is 2024-09-18.
- [17287] yAudit SwapVerifier update.pdf — no match: Only one contract in scope: SwapVerifier.sol. Audit date from cover page.
- [17288] yAudit rEUL ERC20 Wrapper Locked.pdf — no match: Two contracts explicitly listed in scope section.
- [17289] yAudit_Euler_Deployment_Polygon_Avalanche_Report.pdf — no match: The report is a deployment feasibility review, not a code audit. No specific contracts are listed as in scope. Only generic references to Euler protocol components (GenericFactory, LidoOracle, LidoFundamentalOracle, RedstoneCoreOracle) are mentioned in passing, but not as audited targets.
- [17290] Euler Rescue StrategyEuler07 November 2025 - 12 November 2025 — no match: No scope section or contract names found in the provided text.
- [17291] Euler - PR111Euler26 October 2025 - 28 October 2025 — no match: No explicit scope section; contracts extracted from findings and file references. Audit period ends 28 October 2025.
- [17293] euler-swapEuler25 April 2025 - 29 April 2025 — matched: Extracted contract names from findings and context; audit period ends 29 April 2025.
- [17295] | 18 February 2025 | EPO (PR#78, PR#79) | Electisec | [Electisec EPO Report]() | — no match: Two contracts in scope: PendleUniversalOracle and CurveEMAOracle. Audit date inferred from review period end date (February 18, 2025).
- [17296] | 4 February 2025 | setLTV | Electisec | [Electisec setLTV Report]() | — no match: Only one contract in scope: Governance.sol from Euler EVK PR#288.
- [17297] | 20 January 2025 | EVK | Cantina | [M4rio.eth SetLTV Report]() | — no match: Only one contract name (Governance) is explicitly mentioned in the report. The report references 'euler-vault-kit' but does not list specific contracts in scope. The date is from the cover page.
- [17301] | 5 September 2024 | EPO | yAudit | [yAudit EPO Update review Report]() | — no match: Scope explicitly lists four contracts in the src directory tree. Audit date inferred from review period end (September 6, 2024).
- [17302] | 8 July 2024 | Euler V2 | yAudit | [yAudit CodeCompetition Fixes review]() | — no match: Extracted contract names from scope sections and issue titles. Audit date inferred from 'month of July' in text, using last day of month.
- [17303] | 20 July 2024 | Origami Oracle Adapters | yAudit | [yAudit Origami Oracle Adapters Report]() | — no match: Scope explicitly lists 5 contracts in src/exchange-rate-adapters/ directory. Audit dates: 27-28 June 2024, so end date is 2024-06-28.
- [17304] | 14 June 2024 | Synths | OpenZeppelin | [OpenZeppelin Synths Report]() | — no match: All five contracts from the Synths directory are explicitly listed in the Scope section.
- [17305] | 9 May 2024 | Reward Streams | Mixbytes | [Mixbytes Reward Streams Report]() | — no match: Scope section explicitly lists three files: BaseRewardStreams.sol, StakingRewardStreams.sol, TrackingRewardStreams.sol. Audit date is May 16, 2024 from the title.
- [17306] | 1 May 2024 | Reward Streams | Hunter Security | [Hunter Security Reward Streams Report]() | — no match: Scope section lists 5 files: BaseRewardStreams.sol, StakingRewardStreams.sol, TrackingRewardStreams.sol, IBalanceTracker.sol, IRewardStreams.sol. Audit date is May 9, 2024 from cover page.
- [17307] | 29 April 2024 | EPO | ChainSecurity | [ChainSecurity Oracle Report]() | — no match: All contracts in ./src/ folder are in scope. The report date is May 15, 2024 from the cover page.
- [17308] | 22 April 2024 | Euler V2 | Cantina CodeCompetition | [Cantina CodeCompetition Report]() | — no match: The report does not have an explicit scope section or table. Contract names were extracted from finding contexts and file paths mentioned in the report. The audit date is from the cover page: 'Euler v2 Competition November13,2024'.
- [17309] | 8 April 2024 | EVC | ChainSecurity | [ChainSecurity EVC Report]() | — no match: Scope section explicitly lists 7 source files. Audit date from cover page: '18 Jun, 2024'.
- [17310] | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | — no match: The report does not contain an explicit scope section. Contract names were extracted from findings context and file references throughout the report. The audit date is from the report cover page: July 5, 2024.
- [17311] | 8 April 2024 | EPO | Spearbit | [Spearbit EPO Report]() | — no match: Extracted contract names from the executive summary and findings sections. The report covers the euler-price-oracle repository. Audit date is May 20, 2024 from the report header.
- [17312] | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | — no match: All contracts listed in the Scope section of the audit report.
- [17313] | 8 April 2024 | EPO | OpenZeppelin | [OpenZeppelin Oracle Report]() | — no match: All contracts listed in the Scope section of the audit report.
- [17314] | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | — no match: Extracted all contracts from the scope section listing files in EVC, EVK, and EPO repos. Audit date inferred from review period end (May 5th, 2024).
- [17315] | 18 March 2024 | EVC | Omniscia | [Omniscia EVC Report]() | — no match: Scope section not explicitly provided; contracts inferred from report text. Audit date taken from latest revision date (May 16th 2024).
- [17316] | 18 March 2024 | EVK | Omniscia | [Omniscia EVK Report]() | — no match: The report does not list individual contract files or names; only the overall 'Euler Vault Kit' is mentioned as the audited system. No specific contract names are extractable.
- [17317] | 18 March 2024 | EPO | Omniscia | [Omniscia EPO Report]() | — no match: Extracted 9 oracle modules from the audit overview. The audit report date is May 10, 2024 (latest revision date).
- [17318] | 18 March 2024 | EVC | OpenZeppelin | [OpenZeppelin EVC Report]() | — no match: All contracts listed in the Scope section of the audit report.
- [17319] | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | — no match: Extracted contract names from the audit report's findings, formal verification sections, and file paths. The report covers the Euler Vault Kit project. The audit date is inferred from the report title 'August2024' and the project timeline (March 7 to May 8, 2024), but the report itself is dated August 2024. Using the last day of the month as per instructions.
- [17320] | 19 February 2024 | FeeFlow | Ottersec - FeeFlow | [Ottersec FeeFlow Report]() | — no match: The scope section describes the program 'euler-fee-flow' but does not list specific contract names or file paths. The only code snippet references a 'buy' function but no contract name is given.
- [17321] | 12 February 2024 | FeeFlow | Team Omega | [Team Omega FeeFlow Report]() | — no match: Only one contract, FeeFlowController, is explicitly in scope. The report mentions 'the Solidity files in the src directory' but only FeeFlowController is named.
- [17322] | 6 February 2024 | FeeFlow | Zellic | [Zellic FeeFlow Report]() | — no match: Scope section lists two programs: FeeFlowController and MinimalEVCClient. Audit date is February 6, 2024 from cover page and executive summary.
- [17323] EnigmaDark_EVK_report.pdf — no match: The report does not have a formal scope section; contracts are inferred from context. The date is given as 'March, 2024' so last day of month used.
- [17324] Euler Trail of Bits report.pdf — no match: The report focuses on the EthereumVaultConnector contract and related components. VaultBase, EVCClient, and ExecutionContext are referenced as part of the system.
- [17325] Euler Hunter Security report.pdf — no match: Scope section lists 6 source files under src/ and src/interfaces/ (interfaces directory listed but no specific files). Contract names extracted from filenames.
- [17326] Euler yAudit report (EVC).pdf — no match: Scope explicitly lists 9 contracts from src/ directory. Audit date inferred from review period ending December 19, 2023.
- [17327] Euler Certora report.pdf — no match: Only one contract, EthereumVaultConnector, is explicitly mentioned in the scope and findings. The report also references TransientStorage but it is not listed as a separate contract in scope; it appears to be a library or inherited contract.
- [17328] Cantina_competition_report.pdf — no match: The report does not have a dedicated scope section; contract names were extracted from finding contexts and file paths mentioned throughout the report. The audit date is from the cover page: 'Euler v2 Competition November13,2024'.
- [17329] ChainSecurity_EVK_report.pdf — no match: Extracted 68 contract names from the scope section (2.1.1 Included in scope) and file paths. Audit date from cover page: '18 June, 2024'.
- [17330] Omniscia_EVK_report.pdf — no match: Extracted 51 contract names from the 'Target Contracts Assessed' table in the Scope section. Audit date is May 20, 2024 from the report header.
- [17331] yAudit_competition_fixes_report.pdf — no match: Extracted contract names from scope section and issue headers. Audit date inferred from 'month of July' in review summary.
- [17334] Euler_Price_Oracle_BailSec_Report.pdf — no match: Three contracts explicitly listed in scope section with GitHub URLs. Audit date inferred from 'March 2026' in header.
- [17335] Euler_Price_Oracle_Omniscia_Report.pdf — no match: Extracted 14 contracts from the scope table and file listings. Audit date found in header: 'May 10, 2024'.
- [17336] Euler_Price_Oracle_yAudit_PendleOracle_Report.pdf — no match: Only one contract in scope: PendleOracle.sol. Audit performed 16-17 Sep 2024, end date used.
- [17337] Euler_Price_Oracle_yAudit_Report.pdf — no match: Extracted all contracts from the scope section listing EVC, EVK, and EPO repos. Audit date inferred from review period end (May 5th, 2024).
- [17338] Euler Omniscia report.pdf — no match: Extracted 7 contracts from the scope table and file paths. Audit date is May 16, 2024 from the report header.
- [17339] Euler Spearbit report.pdf — no match: Extracted from executive summary and findings. Only three contracts/interfaces explicitly mentioned: EthereumVaultConnector, IEthereumVaultConnector, and EVCUtil.
- [17340] Euler yAudit report (EVC + EVK + Price Oracle).pdf — no match: Extracted all contracts from the scope section listing files in EVC, EVK, and EPO repos. Audit date inferred from review period end date (May 5th, 2024).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Learn more | Ethereum Vault Connector | unmatched — not counted | — | Listed in scope repositories: Ethereum Vault Connector | no |
| Learn more | Euler Vault Kit | unmatched — not counted | — | Listed in scope repositories: Euler Vault Kit | no |
| Learn more | Euler Price Oracle | unmatched — not counted | — | Listed in scope repositories: Euler Price Oracle | no |
| Learn more | Reward Streams | unmatched — not counted | — | Listed in scope repositories: Reward Streams | no |
| Learn more | Fee Flow | unmatched — not counted | — | Listed in scope repositories: Fee Flow | no |
| Learn more | Euler Earn | unmatched — not counted | — | Listed in scope repositories: Euler Earn | no |
| Learn more | EulerSwap | unmatched — not counted | — | Listed in scope repositories: EulerSwap | no |
| Learn more | Securitize Collateral Vault | unmatched — not counted | — | Listed in scope repositories: Securitize Collateral Vault | no |
| Pashov_Audit_Group_report.pdf | EulerEarn | unmatched — not counted | — | listed in scope | no |
| Pashov_Audit_Group_report.pdf | EulerEarnFactory | unmatched — not counted | — | listed in scope | no |
| Pashov_Audit_Group_report.pdf | PublicAllocator | unmatched — not counted | — | listed in scope | no |
| Pashov_Audit_Group_report.pdf | ConstantsLib | unmatched — not counted | — | listed in scope | no |
| Pashov_Audit_Group_report.pdf | ErrorsLib | unmatched — not counted | — | listed in scope | no |
| Pashov_Audit_Group_report.pdf | EventsLib | unmatched — not counted | — | listed in scope | no |
| Pashov_Audit_Group_report.pdf | PendingLib | unmatched — not counted | — | listed in scope | no |
| Pashov_Audit_Group_report.pdf | SafeERC20Permit2Lib | unmatched — not counted | — | listed in scope | no |
| Pashov_Audit_Group_report.pdf | UtilsLib | unmatched — not counted | — | listed in scope | no |
| Certora_EulerEarn_report.pdf | EulerEarn | unmatched — not counted | — | listed in scope | no |
| Certora_EulerEarn_report.pdf | EulerEarnFactory | unmatched — not counted | — | listed in scope | no |
| Certora_EulerEarn_report.pdf | PublicAllocator | unmatched — not counted | — | listed in scope | no |
| Sigma_Prime_EulerEarn_report.pdf | EulerEarn | unmatched — not counted | — | listed in scope | no |
| Sigma_Prime_EulerEarn_report.pdf | EulerEarnFactory | unmatched — not counted | — | listed in scope | no |
| Sigma_Prime_EulerEarn_report.pdf | PublicAllocator | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | EulerEarn | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | EulerEarnFactory | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | PublicAllocator | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | EulerEarn | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | EulerEarnFactory | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | PublicAllocator | unmatched — not counted | — | listed in scope | no |
| Omniscia Euler Earn Report | Earn | unmatched — not counted | — | The report states 'Earn (Yield Aggregator) module' and describes it as an EIP-4626 vault. | no |
| Certora EulerEarn | EulerEarn | unmatched — not counted | — | listed in scope | no |
| Certora EulerEarn | EulerEarnFactory | unmatched — not counted | — | listed in scope | no |
| Certora EulerEarn | PublicAllocator | unmatched — not counted | — | listed in scope | no |
| Sigma Prime EulerEarn | EulerEarn | unmatched — not counted | — | listed in scope | no |
| Sigma Prime EulerEarn | EulerEarnFactory | unmatched — not counted | — | listed in scope | no |
| Sigma Prime EulerEarn | PublicAllocator | unmatched — not counted | — | listed in scope | no |
| Cyfrin EulerSwap | EulerSwap | unmatched — not counted | — | listed in scope | no |
| Cyfrin EulerSwap | EulerSwapFactory | unmatched — not counted | — | listed in scope | no |
| Cyfrin EulerSwap | EulerSwapPeriphery | own contract | EulerSwapPeriphery (selected) `0x208ff5eb543814789321daa1b5eb551881d16b06` — deployed 2025-06-10 22:09:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cyfrin EulerSwap | UniswapHook | unmatched — not counted | — | listed in scope | no |
| Cyfrin EulerSwap | CtxLib | unmatched — not counted | — | listed in scope | no |
| Cyfrin EulerSwap | CurveLib | unmatched — not counted | — | listed in scope | no |
| Cyfrin EulerSwap | FundsLib | unmatched — not counted | — | listed in scope | no |
| Cyfrin EulerSwap | QuoteLib | unmatched — not counted | — | listed in scope | no |
| Cyfrin EulerSwap | MetaProxyDeployer | unmatched — not counted | — | listed in scope | no |
| Cyfrin EulerSwap | ProtocolFee | unmatched — not counted | — | listed in scope | no |
| Cantina Managed EulerSwap May 3 | EulerSwap | unmatched — not counted | — | mentioned in findings context | no |
| Cantina Managed EulerSwap May 3 | EulerSwapFactory | unmatched — not counted | — | mentioned in findings context | no |
| Cantina Managed EulerSwap May 3 | EulerSwapPeriphery | own contract | EulerSwapPeriphery (selected) `0x208ff5eb543814789321daa1b5eb551881d16b06` — deployed 2025-06-10 22:09:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cantina Managed EulerSwap May 3 | MetaProxyDeployer | unmatched — not counted | — | mentioned in findings context | no |
| Cantina Managed EulerSwap May 3 | FundsLib | unmatched — not counted | — | mentioned in findings context | no |
| Cantina Managed EulerSwap May 3 | QuoteLib | unmatched — not counted | — | mentioned in findings context | no |
| Cantina Managed EulerSwap May 3 | CurveLib | unmatched — not counted | — | mentioned in findings context | no |
| Cantina Managed EulerSwap May 3 | CtxLib | unmatched — not counted | — | mentioned in findings context | no |
| Cantina Managed EulerSwap May 3 | UniswapHook | unmatched — not counted | — | mentioned in findings context | no |
| | March 31, 2025 | EulerSwap | ChainSecurity | [ChainSecurity EulerSwap ]() | | EulerSwap | unmatched — not counted | — | listed in scope | no |
| | March 31, 2025 | EulerSwap | ChainSecurity | [ChainSecurity EulerSwap ]() | | EulerSwapPeriphery | own contract | EulerSwapPeriphery (selected) `0x208ff5eb543814789321daa1b5eb551881d16b06` — deployed 2025-06-10 22:09:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | March 31, 2025 | EulerSwap | ChainSecurity | [ChainSecurity EulerSwap ]() | | IEulerSwap | unmatched — not counted | — | listed in scope | no |
| | March 31, 2025 | EulerSwap | ChainSecurity | [ChainSecurity EulerSwap ]() | | IEulerSwapPeriphery | unmatched — not counted | — | listed in scope | no |
| | March 31, 2025 | EulerSwap | ChainSecurity | [ChainSecurity EulerSwap ]() | | IUniswapV2Callee | unmatched — not counted | — | listed in scope | no |
| Cantina Managed EulerSwap Mar 29 | EulerSwap | unmatched — not counted | — | Context in findings: EulerSwap.sol#L24-L31, L270-L278, etc. | no |
| Cantina Managed EulerSwap Mar 29 | EulerSwapPeriphery | own contract | EulerSwapPeriphery (selected) `0x208ff5eb543814789321daa1b5eb551881d16b06` — deployed 2025-06-10 22:09:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cantina Managed EulerSwap Mar 29 | EulerSwapFactory | unmatched — not counted | — | Mentioned in finding 3.3.3: 'there's an EulerSwapFactory' | no |
| Cantina Managed EulerSwap Mar 29 | IEulerSwapFactory | unmatched — not counted | — | Mentioned in finding 3.3.1: 'IEulerSwapFactory.sol: This interface has no NatSpec.' | no |
| Fuzzland EulerSwap | EulerSwap | unmatched — not counted | — | Scope section: 'Scopesrc/*.sol' and findings reference 'src/EulerSwap.sol' | no |
| report-cantinacode-euler-0901.pdf | EulerSwapRegistry | unmatched — not counted | — | Listed in scope context: EulerSwapRegistry.sol#L298-L300, L132-L134, L190-L194, L132-L144 | no |
| report-cantinacode-euler-0901.pdf | EulerSwap | unmatched — not counted | — | Listed in scope context: EulerSwap.sol#L255-L277, L45-L52 | no |
| report-cantinacode-euler-0901.pdf | QuoteLib | unmatched — not counted | — | Listed in scope context: QuoteLib.sol#L132, L89-L98 | no |
| report-cantinacode-euler-0901.pdf | SwapLib | unmatched — not counted | — | Listed in scope context: SwapLib library mentioned in findings | no |
| report-cantinacode-euler-0901.pdf | CurveLib | unmatched — not counted | — | Listed in scope context: CurveLib.sol#L63 | no |
| report-cantinacode-euler-0901.pdf | UniswapHook | unmatched — not counted | — | Listed in scope context: UniswapHook mentioned in finding 3.4.3 | no |
| report-cantinacode-euler-0901.pdf | CtxLib | unmatched — not counted | — | Listed in scope context: CtxLib.State mentioned in finding 3.4.3 | no |
| report-cantinacode-euler-0901.pdf | Ternary | unmatched — not counted | — | Listed in scope context: Ternary library mentioned in finding 3.5.3 | no |
| yAudit ERC4626 and Vault Securitize Report | SwapVerifier | unmatched — not counted | — | listed in scope section 1.2 | no |
| yAudit ERC4626 and Vault Securitize Report | TransferFromSender | unmatched — not counted | — | listed in scope section 1.2 | no |
| yAudit ERC4626 and Vault Securitize Report | ERC4626EVC | unmatched — not counted | — | listed in scope section 1.2 | no |
| yAudit ERC4626 and Vault Securitize Report | ERC4626EVCCollateral | unmatched — not counted | — | listed in scope section 1.2 | no |
| yAudit ERC4626 and Vault Securitize Report | ERC4626EVCCollateralCapped | unmatched — not counted | — | listed in scope section 1.2 | no |
| yAudit ERC4626 and Vault Securitize Report | ERC4626EVCCollateralFreezable | unmatched — not counted | — | listed in scope section 1.2 | no |
| yAudit ERC4626 and Vault Securitize Report | ERC4626EVCCollateralSecuritize | unmatched — not counted | — | listed in scope section 1.2 | no |
| yAudit ERC4626 and Vault Securitize Report | ERC4626EVCCollateralSecuritizeFactory | unmatched — not counted | — | listed in scope section 1.2 | no |
| Pashov Group ERC4626 and Vault Securitize Report | ERC4626EVCCollateralSecuritize | unmatched — not counted | — | listed in scope section | no |
| Pashov Group ERC4626 and Vault Securitize Report | ERC4626EVC | unmatched — not counted | — | listed in scope section | no |
| Pashov Group ERC4626 and Vault Securitize Report | ERC4626EVCCollateral | unmatched — not counted | — | listed in scope section | no |
| Pashov Group ERC4626 and Vault Securitize Report | ERC4626EVCCollateralCapped | unmatched — not counted | — | listed in scope section | no |
| Pashov Group ERC4626 and Vault Securitize Report | ERC4626EVCCollateralFreezable | unmatched — not counted | — | listed in scope section | no |
| Pashov Group ERC4626 and Vault Securitize Report | ERC4626EVCCollateralSecuritizeFactory | unmatched — not counted | — | listed in scope section | no |
| Pashov Group ERC4626 and Vault Securitize Report | IERC4626EVCCollateralSecuritizeFactory | unmatched — not counted | — | listed in scope section | no |
| Pashov Group ERC4626 and Vault Securitize Report | SwapVerifier | unmatched — not counted | — | listed in scope section | no |
| Pashov Group ERC4626 and Vault Securitize Report | TransferFromSender | unmatched — not counted | — | listed in scope section | no |
| | 2 December 2024 | EVK Periphery - ERC20 Burnable Mintable | BailSec | [BailSec ERC20BurnableMintable Report]() | | ERC20BurnableMintable | unmatched — not counted | — | listed in scope table and analyzed in report | no |
| | 1 June 2025 | EUL ERC20 | BailSec | [BailSec EUL ERC20 Report]() | | Eul | unmatched — not counted | — | The report explicitly states 'The EUL contract is a simple ERC20 contract...' and lists it as the target of the audit. | no |
| | 11 March 2026 | EVK Periphery (Oracle, Hook, SwapVerifier) | BailSec | [BailSec EVK Periphery Oracle Hook SwapVerifier Report]() | | ChainlinkInfrequentOracleXStocks | unmatched — not counted | — | listed in scope section | no |
| | 11 March 2026 | EVK Periphery (Oracle, Hook, SwapVerifier) | BailSec | [BailSec EVK Periphery Oracle Hook SwapVerifier Report]() | | HookTargetTermsOfUse | unmatched — not counted | — | listed in scope section | no |
| | 11 March 2026 | EVK Periphery (Oracle, Hook, SwapVerifier) | BailSec | [BailSec EVK Periphery Oracle Hook SwapVerifier Report]() | | SwapVerifier | unmatched — not counted | — | listed in scope section | no |
| | 1 August 2025 | HookTargetMarketStatus | CD Security | [CD Security HookTargetMarketStatus Report]() | | DataStreamsVerifier | unmatched — not counted | — | listed in scope | no |
| | 1 August 2025 | HookTargetMarketStatus | CD Security | [CD Security HookTargetMarketStatus Report]() | | HookTargetMarketStatus | unmatched — not counted | — | listed in scope | no |
| CDSecurity ERC20 Wrapper Locked.pdf | ERC20WrapperLocked | unmatched — not counted | — | listed in scope | no |
| | 5 February 2025 | Adaptive IRM | Electisec | [Electisec Adaptive IRM Report]() | | IRMAdaptiveCurve | unmatched — not counted | — | listed in scope | no |
| | 5 February 2025 | Adaptive IRM | Electisec | [Electisec Adaptive IRM Report]() | | ExpLib | unmatched — not counted | — | listed in scope | no |
| | 5 February 2025 | Adaptive IRM | Electisec | [Electisec Adaptive IRM Report]() | | EulerIRMAdaptiveCurveFactory | unmatched — not counted | — | listed in scope | no |
| | 14 October 2025 | ERC20Synth & Auxiliary Contracts | Electisec | [Electisec ERC20Synth and Auxiliary Contracts Report]() | | ERC20Synth | unmatched — not counted | — | listed in scope | no |
| | 14 October 2025 | ERC20Synth & Auxiliary Contracts | Electisec | [Electisec ERC20Synth and Auxiliary Contracts Report]() | | FeeFlowControllerEVK | unmatched — not counted | — | listed in scope | no |
| | 14 October 2025 | ERC20Synth & Auxiliary Contracts | Electisec | [Electisec ERC20Synth and Auxiliary Contracts Report]() | | IRMBasePremium | unmatched — not counted | — | listed in scope | no |
| | 14 October 2025 | ERC20Synth & Auxiliary Contracts | Electisec | [Electisec ERC20Synth and Auxiliary Contracts Report]() | | OFTFeeCollector | unmatched — not counted | — | listed in scope | no |
| | 14 October 2025 | ERC20Synth & Auxiliary Contracts | Electisec | [Electisec ERC20Synth and Auxiliary Contracts Report]() | | OFTGulper | unmatched — not counted | — | listed in scope | no |
| | 14 October 2025 | ERC20Synth & Auxiliary Contracts | Electisec | [Electisec ERC20Synth and Auxiliary Contracts Report]() | | FeeCollectorGulper | unmatched — not counted | — | listed in scope | no |
| | 14 October 2025 | ERC20Synth & Auxiliary Contracts | Electisec | [Electisec ERC20Synth and Auxiliary Contracts Report]() | | FeeCollectorUtil | unmatched — not counted | — | listed in scope | no |
| | 11 March 2025 | GovernorAccessControlEmergencyFactory | Electisec | [Electisec GovernorAccessControlEmergencyFactory Report]() | | GovernorAccessControlEmergencyFactory | unmatched — not counted | — | listed in scope | no |
| | 11 March 2025 | GovernorAccessControlEmergencyFactory | Electisec | [Electisec GovernorAccessControlEmergencyFactory Report]() | | accessControlEmergencyGovernor | unmatched — not counted | — | listed in scope table | no |
| | 11 March 2025 | GovernorAccessControlEmergencyFactory | Electisec | [Electisec GovernorAccessControlEmergencyFactory Report]() | | accessControlEmergencyGovernorAdminTimelockController | unmatched — not counted | — | listed in scope table | no |
| | 11 March 2025 | GovernorAccessControlEmergencyFactory | Electisec | [Electisec GovernorAccessControlEmergencyFactory Report]() | | accessControlEmergencyGovernorWildcardTimelockController | unmatched — not counted | — | listed in scope table | no |
| | 22 April 2025 | CapRiskSteward | MixBytes | [MixBytes CapRiskSteward Report]() | | CapRiskSteward | own contract | 0xfe56ca… (selected) `0xfe56caa36da676364e1a0a97e4f7c07651e89b95` — deployed 2025-06-02 21:15:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | 22 April 2025 | HookTargetStakeDelegator | MixBytes | [MixBytes HookTargetStakeDelegator Report]() | | HookTargetStakeDelegator | unmatched — not counted | — | listed in scope table | no |
| Paladin LayerZero Adapters.pdf | MintBurnOFTAdapter | unmatched — not counted | — | listed in Contracts Assessed table and detailed in findings section | no |
| Paladin LayerZero Adapters.pdf | OFTAdapterUpgradeable | unmatched — not counted | — | listed in Contracts Assessed table and detailed in findings section | no |
| Paladin LayerZero Adapters.pdf | ERC20BurnableMintable | unmatched — not counted | — | listed in Contracts Assessed table and detailed in findings section | no |
| | 14 October 2025 | ERC20Synth & Auxiliary Contracts | Spearbit | [Spearbit ERC20Synth and Auxiliary Contracts Report]() | | FeeFlowControllerEVK | unmatched — not counted | — | listed in scope and findings context | no |
| | 14 October 2025 | ERC20Synth & Auxiliary Contracts | Spearbit | [Spearbit ERC20Synth and Auxiliary Contracts Report]() | | OFTFeeCollector | unmatched — not counted | — | listed in scope and findings context | no |
| | 14 October 2025 | ERC20Synth & Auxiliary Contracts | Spearbit | [Spearbit ERC20Synth and Auxiliary Contracts Report]() | | FeeCollectorUtil | unmatched — not counted | — | listed in scope and findings context | no |
| | 14 October 2025 | ERC20Synth & Auxiliary Contracts | Spearbit | [Spearbit ERC20Synth and Auxiliary Contracts Report]() | | IRMBasePremium | unmatched — not counted | — | listed in scope and findings context | no |
| | 14 October 2025 | ERC20Synth & Auxiliary Contracts | Spearbit | [Spearbit ERC20Synth and Auxiliary Contracts Report]() | | OFTGulper | unmatched — not counted | — | listed in scope and findings context | no |
| | 14 October 2025 | ERC20Synth & Auxiliary Contracts | Spearbit | [Spearbit ERC20Synth and Auxiliary Contracts Report]() | | FeeCollectorGulper | unmatched — not counted | — | listed in scope and findings context | no |
| | 14 October 2025 | ERC20Synth & Auxiliary Contracts | Spearbit | [Spearbit ERC20Synth and Auxiliary Contracts Report]() | | IIRMBasePremium | unmatched — not counted | — | listed in scope and findings context | no |
| | 13 June 2025 | IRMLinearKinky | Supremacy | [Supremacy IRMLinearKinky Report]() | | IRMLinearKinky | unmatched — not counted | — | listed in scope table | no |
| | 18 October 2024 | EVK Periphery - custom liquidator & selector access | yAudit | [yAudit EVK Custom Liquidator & Selector Access Control Report]() | | SelectorAccessControl | unmatched — not counted | — | listed in scope | no |
| | 18 October 2024 | EVK Periphery - custom liquidator & selector access | yAudit | [yAudit EVK Custom Liquidator & Selector Access Control Report]() | | GovernorAccessControl | unmatched — not counted | — | listed in scope | no |
| | 18 October 2024 | EVK Periphery - custom liquidator & selector access | yAudit | [yAudit EVK Custom Liquidator & Selector Access Control Report]() | | BaseHookTarget | unmatched — not counted | — | listed in scope | no |
| | 18 October 2024 | EVK Periphery - custom liquidator & selector access | yAudit | [yAudit EVK Custom Liquidator & Selector Access Control Report]() | | HookTargetAccessControl | unmatched — not counted | — | listed in scope | no |
| | 18 October 2024 | EVK Periphery - custom liquidator & selector access | yAudit | [yAudit EVK Custom Liquidator & Selector Access Control Report]() | | CustomLiquidatorBase | unmatched — not counted | — | listed in scope | no |
| | 18 October 2024 | EVK Periphery - custom liquidator & selector access | yAudit | [yAudit EVK Custom Liquidator & Selector Access Control Report]() | | SBLiquidator | unmatched — not counted | — | listed in scope | no |
| | 18 October 2024 | EVK Periphery - custom liquidator & selector access | yAudit | [yAudit EVK Custom Liquidator & Selector Access Control Report]() | | FactoryGovernor | own contract | FactoryGovernor (selected) `0x2f13256e04022d6356d8ce8c53c7364e13dc1f3d` — deployed 2024-12-26 13:55:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | 8 August 2024 | EVK Periphery - Vault Pause Guardian | yAudit | [yAudit - EVK Periphery - Vault Pause Guardian Report]() | | FactoryGovernor | own contract | FactoryGovernor (selected) `0x2f13256e04022d6356d8ce8c53c7364e13dc1f3d` — deployed 2024-12-26 13:55:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | 8 August 2024 | EVK Periphery - Vault Pause Guardian | yAudit | [yAudit - EVK Periphery - Vault Pause Guardian Report]() | | GovernorGuardian | unmatched — not counted | — | listed in scope | no |
| | 8 August 2024 | EVK Periphery - Vault Pause Guardian | yAudit | [yAudit - EVK Periphery - Vault Pause Guardian Report]() | | ReadOnlyProxy | unmatched — not counted | — | listed in scope | no |
| | 8 August 2024 | EVK Periphery - Vault Pause Guardian | yAudit | [yAudit - EVK Periphery - Vault Pause Guardian Report]() | | HookTargetGuardian | unmatched — not counted | — | listed in scope | no |
| | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() | | BaseFactory | unmatched — not counted | — | listed in scope | no |
| | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() | | IFactory | unmatched — not counted | — | listed in scope | no |
| | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() | | EulerKinkIRMFactory | unmatched — not counted | — | listed in scope | no |
| | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() | | IEulerKinkIRMFactory | unmatched — not counted | — | listed in scope | no |
| | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() | | AdapterRegistry | unmatched — not counted | — | listed in scope | no |
| | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() | | EulerRouterFactory | unmatched — not counted | — | listed in scope | no |
| | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() | | IEulerRouter | unmatched — not counted | — | listed in scope | no |
| | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() | | IEulerRouterFactory | unmatched — not counted | — | listed in scope | no |
| | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() | | EscrowSingletonPerspective | unmatched — not counted | — | listed in scope | no |
| | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() | | EulerDefaultClusterPerspective | unmatched — not counted | — | listed in scope | no |
| | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() | | EulerFactoryPerspective | unmatched — not counted | — | listed in scope | no |
| | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() | | ImmutableWhitelistPerspective | unmatched — not counted | — | listed in scope | no |
| | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() | | BasePerspective | unmatched — not counted | — | listed in scope | no |
| | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() | | DefaultClusterPerspective | unmatched — not counted | — | listed in scope | no |
| | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() | | PerspectiveErrors | unmatched — not counted | — | listed in scope | no |
| | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() | | IPerspective | unmatched — not counted | — | listed in scope | no |
| | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() | | ISwapper | unmatched — not counted | — | listed in scope | no |
| | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() | | SwapVerifier | unmatched — not counted | — | listed in scope | no |
| | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() | | Swapper | unmatched — not counted | — | listed in scope | no |
| | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() | | BaseHandler | unmatched — not counted | — | listed in scope | no |
| | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() | | OneInchHandler | unmatched — not counted | — | listed in scope | no |
| | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() | | UniswapAutoRouterHandler | unmatched — not counted | — | listed in scope | no |
| | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() | | UniswapV2Handler | unmatched — not counted | — | listed in scope | no |
| | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() | | UniswapV3Handler | unmatched — not counted | — | listed in scope | no |
| | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() | | ISwapRouterV2 | unmatched — not counted | — | listed in scope | no |
| | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() | | ISwapRouterV3 | unmatched — not counted | — | listed in scope | no |
| | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() | | IUniswapV3SwapCallback | unmatched — not counted | — | listed in scope | no |
| | 20 September 2024 | EVK Periphery Forta Firewall hooks | yAudit - Forta Firewall Attestation hooks | [yAudit - EVK Periphery - Forta Firewall hooks Report]() | | HookTargetFirewall | unmatched — not counted | — | listed in scope section | no |
| yAudit SwapVerifier update.pdf | SwapVerifier | unmatched — not counted | — | listed in scope section | no |
| yAudit rEUL ERC20 Wrapper Locked.pdf | RewardToken | unmatched — not counted | — | listed in scope section | no |
| yAudit rEUL ERC20 Wrapper Locked.pdf | ERC20WrapperLocked | unmatched — not counted | — | listed in scope section | no |
| Euler - PR111Euler26 October 2025 - 28 October 2025 | EulerSwapProtocolFeeConfig | unmatched — not counted | — | mentioned in findings | no |
| Euler - PR111Euler26 October 2025 - 28 October 2025 | EulerSwapManagement | unmatched — not counted | — | mentioned in findings | no |
| Euler - PR111Euler26 October 2025 - 28 October 2025 | EulerSwap | unmatched — not counted | — | mentioned in findings | no |
| Euler - PR111Euler26 October 2025 - 28 October 2025 | EulerSwapBase | unmatched — not counted | — | mentioned as base contract | no |
| Euler - PR111Euler26 October 2025 - 28 October 2025 | FundsLib | unmatched — not counted | — | mentioned in findings | no |
| Euler - PR111Euler26 October 2025 - 28 October 2025 | SwapLib | unmatched — not counted | — | mentioned in findings | no |
| Euler - PR111Euler26 October 2025 - 28 October 2025 | IEulerSwapCallee | unmatched — not counted | — | mentioned in findings | no |
| euler-swapEuler25 April 2025 - 29 April 2025 | EulerSwap | unmatched — not counted | — | mentioned in findings and context | no |
| euler-swapEuler25 April 2025 - 29 April 2025 | EulerSwapFactory | unmatched — not counted | — | mentioned in findings and context | no |
| euler-swapEuler25 April 2025 - 29 April 2025 | EulerSwapPeriphery | own contract | EulerSwapPeriphery (selected) `0x208ff5eb543814789321daa1b5eb551881d16b06` — deployed 2025-06-10 22:09:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| euler-swapEuler25 April 2025 - 29 April 2025 | MetaProxyDeployer | unmatched — not counted | — | mentioned in informational finding | no |
| euler-swapEuler25 April 2025 - 29 April 2025 | FundsLib | unmatched — not counted | — | mentioned in findings and context | no |
| euler-swapEuler25 April 2025 - 29 April 2025 | CurveLib | unmatched — not counted | — | mentioned in findings and context | no |
| euler-swapEuler25 April 2025 - 29 April 2025 | QuoteLib | unmatched — not counted | — | mentioned in findings and context | no |
| euler-swapEuler25 April 2025 - 29 April 2025 | CtxLib | unmatched — not counted | — | mentioned in informational finding | no |
| euler-swapEuler25 April 2025 - 29 April 2025 | UniswapHook | unmatched — not counted | — | mentioned in findings and context | no |
| | 18 February 2025 | EPO (PR#78, PR#79) | Electisec | [Electisec EPO Report]() | | PendleUniversalOracle | unmatched — not counted | — | listed in scope | no |
| | 18 February 2025 | EPO (PR#78, PR#79) | Electisec | [Electisec EPO Report]() | | CurveEMAOracle | unmatched — not counted | — | listed in scope | no |
| | 4 February 2025 | setLTV | Electisec | [Electisec setLTV Report]() | | Governance | unmatched — not counted | — | listed in scope | no |
| | 20 January 2025 | EVK | Cantina | [M4rio.eth SetLTV Report]() | | Governance | unmatched — not counted | — | mentioned in finding context: Governance.sol#L281 | no |
| | 5 September 2024 | EPO | yAudit | [yAudit EPO Update review Report]() | | LidoFundamentalOracle | unmatched — not counted | — | listed in scope | no |
| | 5 September 2024 | EPO | yAudit | [yAudit EPO Update review Report]() | | FixedRateOracle | unmatched — not counted | — | listed in scope | no |
| | 5 September 2024 | EPO | yAudit | [yAudit EPO Update review Report]() | | RateProviderOracle | unmatched — not counted | — | listed in scope | no |
| | 5 September 2024 | EPO | yAudit | [yAudit EPO Update review Report]() | | IRateProvider | unmatched — not counted | — | listed in scope | no |
| | 8 July 2024 | Euler V2 | yAudit | [yAudit CodeCompetition Fixes review]() | | EVC | unmatched — not counted | — | listed in scope | no |
| | 8 July 2024 | Euler V2 | yAudit | [yAudit CodeCompetition Fixes review]() | | RewardStreams | unmatched — not counted | — | listed in scope | no |
| | 8 July 2024 | Euler V2 | yAudit | [yAudit CodeCompetition Fixes review]() | | EPO | unmatched — not counted | — | listed in scope | no |
| | 8 July 2024 | Euler V2 | yAudit | [yAudit CodeCompetition Fixes review]() | | EVault | unmatched — not counted | — | listed in scope | no |
| | 8 July 2024 | Euler V2 | yAudit | [yAudit CodeCompetition Fixes review]() | | ESynth | unmatched — not counted | — | mentioned in EVK issues | no |
| | 8 July 2024 | Euler V2 | yAudit | [yAudit CodeCompetition Fixes review]() | | EulerSavingsRate | unmatched — not counted | — | mentioned in EVK issues | no |
| | 8 July 2024 | Euler V2 | yAudit | [yAudit CodeCompetition Fixes review]() | | PegStabilityModule | unmatched — not counted | — | mentioned in EVK issues | no |
| | 8 July 2024 | Euler V2 | yAudit | [yAudit CodeCompetition Fixes review]() | | BalanceUtils | unmatched — not counted | — | mentioned in EVK issues | no |
| | 8 July 2024 | Euler V2 | yAudit | [yAudit CodeCompetition Fixes review]() | | ERC20Collateral | unmatched — not counted | — | enhancement mentioned | no |
| | 8 July 2024 | Euler V2 | yAudit | [yAudit CodeCompetition Fixes review]() | | ERC20EVCCompatible | unmatched — not counted | — | enhancement mentioned | no |
| | 8 July 2024 | Euler V2 | yAudit | [yAudit CodeCompetition Fixes review]() | | IRM | unmatched — not counted | — | mentioned in enhancements | no |
| | 8 July 2024 | Euler V2 | yAudit | [yAudit CodeCompetition Fixes review]() | | DistributionStorage | unmatched — not counted | — | enhancement mentioned | no |
| | 8 July 2024 | Euler V2 | yAudit | [yAudit CodeCompetition Fixes review]() | | TransientStorage | unmatched — not counted | — | mentioned in EVC issues | no |
| | 20 July 2024 | Origami Oracle Adapters | yAudit | [yAudit Origami Oracle Adapters Report]() | | EzEthToEthExchangeRateChainlinkAdapter | unmatched — not counted | — | listed in scope | no |
| | 20 July 2024 | Origami Oracle Adapters | yAudit | [yAudit Origami Oracle Adapters Report]() | | RsEthToEthExchangeRateChainlinkAdapter | unmatched — not counted | — | listed in scope | no |
| | 20 July 2024 | Origami Oracle Adapters | yAudit | [yAudit Origami Oracle Adapters Report]() | | RswEthToEthExchangeRateChainlinkAdapter | unmatched — not counted | — | listed in scope | no |
| | 20 July 2024 | Origami Oracle Adapters | yAudit | [yAudit Origami Oracle Adapters Report]() | | SwEthToEthExchangeRateChainlinkAdapter | unmatched — not counted | — | listed in scope | no |
| | 20 July 2024 | Origami Oracle Adapters | yAudit | [yAudit Origami Oracle Adapters Report]() | | WeEthToEthExchangeRateChainlinkAdapter | unmatched — not counted | — | listed in scope | no |
| | 14 June 2024 | Synths | OpenZeppelin | [OpenZeppelin Synths Report]() | | ERC20Collateral | unmatched — not counted | — | listed in scope | no |
| | 14 June 2024 | Synths | OpenZeppelin | [OpenZeppelin Synths Report]() | | ESynth | unmatched — not counted | — | listed in scope | no |
| | 14 June 2024 | Synths | OpenZeppelin | [OpenZeppelin Synths Report]() | | EulerSavingsRate | unmatched — not counted | — | listed in scope | no |
| | 14 June 2024 | Synths | OpenZeppelin | [OpenZeppelin Synths Report]() | | IRMSynth | unmatched — not counted | — | listed in scope | no |
| | 14 June 2024 | Synths | OpenZeppelin | [OpenZeppelin Synths Report]() | | PegStabilityModule | unmatched — not counted | — | listed in scope | no |
| | 9 May 2024 | Reward Streams | Mixbytes | [Mixbytes Reward Streams Report]() | | BaseRewardStreams | unmatched — not counted | — | listed in scope table | no |
| | 9 May 2024 | Reward Streams | Mixbytes | [Mixbytes Reward Streams Report]() | | StakingRewardStreams | unmatched — not counted | — | listed in scope table | no |
| | 9 May 2024 | Reward Streams | Mixbytes | [Mixbytes Reward Streams Report]() | | TrackingRewardStreams | unmatched — not counted | — | listed in scope table | no |
| | 1 May 2024 | Reward Streams | Hunter Security | [Hunter Security Reward Streams Report]() | | BaseRewardStreams | unmatched — not counted | — | listed in scope | no |
| | 1 May 2024 | Reward Streams | Hunter Security | [Hunter Security Reward Streams Report]() | | StakingRewardStreams | unmatched — not counted | — | listed in scope | no |
| | 1 May 2024 | Reward Streams | Hunter Security | [Hunter Security Reward Streams Report]() | | TrackingRewardStreams | unmatched — not counted | — | listed in scope | no |
| | 1 May 2024 | Reward Streams | Hunter Security | [Hunter Security Reward Streams Report]() | | IBalanceTracker | unmatched — not counted | — | listed in scope | no |
| | 1 May 2024 | Reward Streams | Hunter Security | [Hunter Security Reward Streams Report]() | | IRewardStreams | unmatched — not counted | — | listed in scope | no |
| | 29 April 2024 | EPO | ChainSecurity | [ChainSecurity Oracle Report]() | | IPriceOracle | unmatched — not counted | — | listed in scope (all files in ./src/) | no |
| | 29 April 2024 | EPO | ChainSecurity | [ChainSecurity Oracle Report]() | | EulerRouter | unmatched — not counted | — | listed in scope (all files in ./src/) | no |
| | 29 April 2024 | EPO | ChainSecurity | [ChainSecurity Oracle Report]() | | BaseAdapter | unmatched — not counted | — | listed in scope (all files in ./src/) | no |
| | 29 April 2024 | EPO | ChainSecurity | [ChainSecurity Oracle Report]() | | CrossAdapter | unmatched — not counted | — | listed in scope (all files in ./src/) | no |
| | 29 April 2024 | EPO | ChainSecurity | [ChainSecurity Oracle Report]() | | ChainlinkOracle | unmatched — not counted | — | listed in scope (all files in ./src/) | no |
| | 29 April 2024 | EPO | ChainSecurity | [ChainSecurity Oracle Report]() | | ChronicleOracle | unmatched — not counted | — | listed in scope (all files in ./src/) | no |
| | 29 April 2024 | EPO | ChainSecurity | [ChainSecurity Oracle Report]() | | PythOracle | unmatched — not counted | — | listed in scope (all files in ./src/) | no |
| | 29 April 2024 | EPO | ChainSecurity | [ChainSecurity Oracle Report]() | | RedstoneCoreOracle | unmatched — not counted | — | listed in scope (all files in ./src/) | no |
| | 29 April 2024 | EPO | ChainSecurity | [ChainSecurity Oracle Report]() | | UniswapV3Oracle | unmatched — not counted | — | listed in scope (all files in ./src/) | no |
| | 29 April 2024 | EPO | ChainSecurity | [ChainSecurity Oracle Report]() | | LidoOracle | unmatched — not counted | — | listed in scope (all files in ./src/) | no |
| | 22 April 2024 | Euler V2 | Cantina CodeCompetition | [Cantina CodeCompetition Report]() | | PegStabilityModule | unmatched — not counted | — | mentioned in finding contexts and file paths | no |
| | 22 April 2024 | Euler V2 | Cantina CodeCompetition | [Cantina CodeCompetition Report]() | | ESynth | unmatched — not counted | — | mentioned in finding contexts and file paths | no |
| | 22 April 2024 | Euler V2 | Cantina CodeCompetition | [Cantina CodeCompetition Report]() | | EthereumVaultConnector | unmatched — not counted | — | mentioned in finding contexts and file paths | no |
| | 22 April 2024 | Euler V2 | Cantina CodeCompetition | [Cantina CodeCompetition Report]() | | BaseRewardStreams | unmatched — not counted | — | mentioned in finding context | no |
| | 22 April 2024 | Euler V2 | Cantina CodeCompetition | [Cantina CodeCompetition Report]() | | Liquidation | unmatched — not counted | — | mentioned in finding contexts and file paths | no |
| | 22 April 2024 | Euler V2 | Cantina CodeCompetition | [Cantina CodeCompetition Report]() | | Borrowing | unmatched — not counted | — | mentioned in finding contexts and file paths | no |
| | 22 April 2024 | Euler V2 | Cantina CodeCompetition | [Cantina CodeCompetition Report]() | | RiskManager | unmatched — not counted | — | mentioned in finding contexts and file paths | no |
| | 22 April 2024 | Euler V2 | Cantina CodeCompetition | [Cantina CodeCompetition Report]() | | IRMSynth | unmatched — not counted | — | mentioned in finding contexts and file paths | no |
| | 22 April 2024 | Euler V2 | Cantina CodeCompetition | [Cantina CodeCompetition Report]() | | MetaProxyDeployer | unmatched — not counted | — | mentioned in finding context | no |
| | 22 April 2024 | Euler V2 | Cantina CodeCompetition | [Cantina CodeCompetition Report]() | | BorrowUtils | unmatched — not counted | — | mentioned in finding contexts and file paths | no |
| | 22 April 2024 | Euler V2 | Cantina CodeCompetition | [Cantina CodeCompetition Report]() | | EVault | unmatched — not counted | — | mentioned in finding contexts and file paths | no |
| | 8 April 2024 | EVC | ChainSecurity | [ChainSecurity EVC Report]() | | ExecutionContext | unmatched — not counted | — | listed in scope table | no |
| | 8 April 2024 | EVC | ChainSecurity | [ChainSecurity EVC Report]() | | EthereumVaultConnector | unmatched — not counted | — | listed in scope table | no |
| | 8 April 2024 | EVC | ChainSecurity | [ChainSecurity EVC Report]() | | TransientStorage | unmatched — not counted | — | listed in scope table | no |
| | 8 April 2024 | EVC | ChainSecurity | [ChainSecurity EVC Report]() | | Errors | unmatched — not counted | — | listed in scope table | no |
| | 8 April 2024 | EVC | ChainSecurity | [ChainSecurity EVC Report]() | | Events | unmatched — not counted | — | listed in scope table | no |
| | 8 April 2024 | EVC | ChainSecurity | [ChainSecurity EVC Report]() | | Set | unmatched — not counted | — | listed in scope table | no |
| | 8 April 2024 | EVC | ChainSecurity | [ChainSecurity EVC Report]() | | EVCUtil | unmatched — not counted | — | listed in scope table | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | PegStabilityModule | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | Liquidation | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | Governance | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | Cache | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | EulerSavingsRate | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | IRMSynth | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | Vault | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | RiskManager | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | Token | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | Borrowing | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | AssetTransfers | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | Shares | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | GenericFactory | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | ESynth | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | EVCUtil | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | BalanceUtils | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | BorrowUtils | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | LiquidityUtils | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | Core | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | BeaconProxy | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | Dispatch | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | ProxyUtils | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | MetaProxyDeployer | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | ERC20Collateral | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | BalanceForwarder | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | Base | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | IEVault | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | IGovernance | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | IToken | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | IERC20 | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | IPriceOracle | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | IBalanceTracker | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | BaseProductLine | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | Types | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | ConversionHelpers | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | OwedLib | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | RPow | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | FullMath | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | EVC | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | EulerRouter | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | InterestRateModel | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | IRMLinearKink | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | Ownable | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | Ownable2Step | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | Synthetic | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | Owned | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EPO | Spearbit | [Spearbit EPO Report]() | | RedstoneCoreOracle | unmatched — not counted | — | Listed in scope and findings | no |
| | 8 April 2024 | EPO | Spearbit | [Spearbit EPO Report]() | | BaseAdapter | unmatched — not counted | — | Listed in scope and findings | no |
| | 8 April 2024 | EPO | Spearbit | [Spearbit EPO Report]() | | PythOracle | unmatched — not counted | — | Listed in scope and findings | no |
| | 8 April 2024 | EPO | Spearbit | [Spearbit EPO Report]() | | ChainlinkOracle | unmatched — not counted | — | Listed in scope and findings | no |
| | 8 April 2024 | EPO | Spearbit | [Spearbit EPO Report]() | | Governable | unmatched — not counted | — | Listed in scope and findings | no |
| | 8 April 2024 | EPO | Spearbit | [Spearbit EPO Report]() | | CrossAdapter | unmatched — not counted | — | Listed in scope and findings | no |
| | 8 April 2024 | EPO | Spearbit | [Spearbit EPO Report]() | | ChronicleOracle | unmatched — not counted | — | Listed in scope and findings | no |
| | 8 April 2024 | EPO | Spearbit | [Spearbit EPO Report]() | | UniswapV3Oracle | unmatched — not counted | — | Listed in scope and findings | no |
| | 8 April 2024 | EPO | Spearbit | [Spearbit EPO Report]() | | LidoOracle | unmatched — not counted | — | Listed in scope and findings | no |
| | 8 April 2024 | EPO | Spearbit | [Spearbit EPO Report]() | | SDaiOracle | unmatched — not counted | — | Listed in scope and findings | no |
| | 8 April 2024 | EPO | Spearbit | [Spearbit EPO Report]() | | EulerRouter | unmatched — not counted | — | Listed in scope and findings | no |
| | 8 April 2024 | EPO | Spearbit | [Spearbit EPO Report]() | | ScaleUtils | unmatched — not counted | — | Listed in scope and findings | no |
| | 8 April 2024 | EPO | Spearbit | [Spearbit EPO Report]() | | IPriceOracle | unmatched — not counted | — | Listed in scope and findings | no |
| | 8 April 2024 | EPO | Spearbit | [Spearbit EPO Report]() | | IChronicle | unmatched — not counted | — | Listed in scope and findings | no |
| | 8 April 2024 | EPO | Spearbit | [Spearbit EPO Report]() | | IStEth | unmatched — not counted | — | Listed in scope and findings | no |
| | 8 April 2024 | EPO | Spearbit | [Spearbit EPO Report]() | | AggregatorV3Interface | unmatched — not counted | — | Listed in scope and findings | no |
| | 8 April 2024 | EPO | Spearbit | [Spearbit EPO Report]() | | IPot | unmatched — not counted | — | Listed in scope and findings | no |
| | 8 April 2024 | EPO | Spearbit | [Spearbit EPO Report]() | | LiquidityUtils | unmatched — not counted | — | Listed in scope and findings | no |
| | 8 April 2024 | EPO | Spearbit | [Spearbit EPO Report]() | | LTVConfig | unmatched — not counted | — | Listed in scope and findings | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | EVault | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | DToken | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | Dispatch | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | IEVault | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | BalanceForwarder | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | Borrowing | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | Governance | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | Initialize | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | Liquidation | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | RiskManager | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | Token | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | Vault | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | AssetTransfers | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | BalanceUtils | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | Base | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | BorrowUtils | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | Cache | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | Constants | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | EVCClient | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | Errors | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | Events | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | LTVUtils | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | LiquidityUtils | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | Storage | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | ConversionHelpers | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | ProxyUtils | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | RPow | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | RevertBytes | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | SafeERC20Lib | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | AmountCap | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | Assets | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | ConfigAmount | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | Flags | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | LTVConfig | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | LTVType | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | Owed | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | Shares | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | Snapshot | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | Types | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | UserStorage | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | VaultCache | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | VaultStorage | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | GenericFactory | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | BeaconProxy | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | MetaProxyDeployer | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | IIRM | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | IRMLinearKink | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | IProtocolConfig | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | ProtocolConfig | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | IBalanceTracker | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | IPermit2 | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | IPriceOracle | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EPO | OpenZeppelin | [OpenZeppelin Oracle Report]() | | EulerRouter | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EPO | OpenZeppelin | [OpenZeppelin Oracle Report]() | | BaseAdapter | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EPO | OpenZeppelin | [OpenZeppelin Oracle Report]() | | CrossAdapter | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EPO | OpenZeppelin | [OpenZeppelin Oracle Report]() | | AggregatorV3Interface | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EPO | OpenZeppelin | [OpenZeppelin Oracle Report]() | | ChainlinkOracle | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EPO | OpenZeppelin | [OpenZeppelin Oracle Report]() | | ChronicleOracle | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EPO | OpenZeppelin | [OpenZeppelin Oracle Report]() | | IChronicle | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EPO | OpenZeppelin | [OpenZeppelin Oracle Report]() | | IStEth | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EPO | OpenZeppelin | [OpenZeppelin Oracle Report]() | | LidoOracle | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EPO | OpenZeppelin | [OpenZeppelin Oracle Report]() | | IPot | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EPO | OpenZeppelin | [OpenZeppelin Oracle Report]() | | SDaiOracle | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EPO | OpenZeppelin | [OpenZeppelin Oracle Report]() | | PythOracle | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EPO | OpenZeppelin | [OpenZeppelin Oracle Report]() | | RedstoneCoreOracle | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EPO | OpenZeppelin | [OpenZeppelin Oracle Report]() | | UniswapV3Oracle | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EPO | OpenZeppelin | [OpenZeppelin Oracle Report]() | | IPriceOracle | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EPO | OpenZeppelin | [OpenZeppelin Oracle Report]() | | Errors | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EPO | OpenZeppelin | [OpenZeppelin Oracle Report]() | | Governable | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EPO | OpenZeppelin | [OpenZeppelin Oracle Report]() | | ScaleUtils | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | EthereumVaultConnector | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | Errors | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | Events | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | ExecutionContext | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | Set | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | TransientStorage | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | IERC1271 | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | IEthereumVaultConnector | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | IVault | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | EVCUtil | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | DToken | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | Dispatch | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | EVault | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | IEVault | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | BalanceForwarder | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | Borrowing | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | Governance | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | Initialize | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | Liquidation | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | RiskManager | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | Token | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | Vault | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | AssetTransfers | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | BalanceUtils | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | Base | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | BorrowUtils | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | Cache | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | Constants | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | EVCClient | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | LTVUtils | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | LiquidityUtils | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | Storage | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | ConversionHelpers | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | ProxyUtils | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | RPow | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | RevertBytes | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | SafeERC20Lib | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | AmountCap | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | Assets | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | ConfigAmount | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | Flags | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | LTVConfig | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | LTVType | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | Owed | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | Shares | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | Snapshot | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | Types | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | UserStorage | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | VaultCache | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | VaultStorage | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | BeaconProxy | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | GenericFactory | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | MetaProxyDeployer | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | IIRM | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | IRMLinearKink | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | BaseProductLine | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | Core | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | Escrow | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | IProtocolConfig | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | ProtocolConfig | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | ERC20Collateral | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | ESynth | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | EulerSavingsRate | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | IRMSynth | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | PegStabilityModule | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | IBalanceTracker | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | IPermit2 | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | IPriceOracle | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | EulerRouter | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | BaseAdapter | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | CrossAdapter | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | AggregatorV3Interface | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | ChainlinkOracle | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | ChronicleOracle | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | IChronicle | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | IStEth | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | LidoOracle | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | IPot | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | SDaiOracle | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | PythOracle | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | RedstoneCoreOracle | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | IReth | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | RethOracle | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | UniswapV3Oracle | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | Governable | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | ScaleUtils | unmatched — not counted | — | listed in scope | no |
| | 18 March 2024 | EVC | Omniscia | [Omniscia EVC Report]() | | EthereumVaultConnector | unmatched — not counted | — | mentioned as the main module audited | no |
| | 18 March 2024 | EVC | Omniscia | [Omniscia EVC Report]() | | Set | unmatched — not counted | — | mentioned in gas optimization context | no |
| | 18 March 2024 | EVK | Omniscia | [Omniscia EVK Report]() | | Euler Vault Kit | unmatched — not counted | — | Audit Overview: 'We were tasked with performing an audit of the Euler Finance codebase and in particular their Euler Vault Kit' | no |
| | 18 March 2024 | EPO | Omniscia | [Omniscia EPO Report]() | | EulerRouter | unmatched — not counted | — | described as a module in the audit overview | no |
| | 18 March 2024 | EPO | Omniscia | [Omniscia EPO Report]() | | ChainlinkOracle | unmatched — not counted | — | described as a module in the audit overview | no |
| | 18 March 2024 | EPO | Omniscia | [Omniscia EPO Report]() | | ChronicleOracle | unmatched — not counted | — | described as a module in the audit overview | no |
| | 18 March 2024 | EPO | Omniscia | [Omniscia EPO Report]() | | LidoOracle | unmatched — not counted | — | described as a module in the audit overview | no |
| | 18 March 2024 | EPO | Omniscia | [Omniscia EPO Report]() | | MakerDAOOracle | unmatched — not counted | — | described as a module in the audit overview | no |
| | 18 March 2024 | EPO | Omniscia | [Omniscia EPO Report]() | | PythOracle | unmatched — not counted | — | described as a module in the audit overview | no |
| | 18 March 2024 | EPO | Omniscia | [Omniscia EPO Report]() | | RedstoneOracle | unmatched — not counted | — | described as a module in the audit overview | no |
| | 18 March 2024 | EPO | Omniscia | [Omniscia EPO Report]() | | RocketPoolOracle | unmatched — not counted | — | described as a module in the audit overview | no |
| | 18 March 2024 | EPO | Omniscia | [Omniscia EPO Report]() | | UniswapV3Oracle | unmatched — not counted | — | described as a module in the audit overview | no |
| | 18 March 2024 | EVC | OpenZeppelin | [OpenZeppelin EVC Report]() | | Errors | unmatched — not counted | — | listed in scope | no |
| | 18 March 2024 | EVC | OpenZeppelin | [OpenZeppelin EVC Report]() | | EthereumVaultConnector | unmatched — not counted | — | listed in scope | no |
| | 18 March 2024 | EVC | OpenZeppelin | [OpenZeppelin EVC Report]() | | Events | unmatched — not counted | — | listed in scope | no |
| | 18 March 2024 | EVC | OpenZeppelin | [OpenZeppelin EVC Report]() | | ExecutionContext | unmatched — not counted | — | listed in scope | no |
| | 18 March 2024 | EVC | OpenZeppelin | [OpenZeppelin EVC Report]() | | Set | unmatched — not counted | — | listed in scope | no |
| | 18 March 2024 | EVC | OpenZeppelin | [OpenZeppelin EVC Report]() | | TransientStorage | unmatched — not counted | — | listed in scope | no |
| | 18 March 2024 | EVC | OpenZeppelin | [OpenZeppelin EVC Report]() | | IERC1271 | unmatched — not counted | — | listed in scope | no |
| | 18 March 2024 | EVC | OpenZeppelin | [OpenZeppelin EVC Report]() | | IEthereumVaultConnector | unmatched — not counted | — | listed in scope | no |
| | 18 March 2024 | EVC | OpenZeppelin | [OpenZeppelin EVC Report]() | | IVault | unmatched — not counted | — | listed in scope | no |
| | 18 March 2024 | EVC | OpenZeppelin | [OpenZeppelin EVC Report]() | | EVCUtil | unmatched — not counted | — | listed in scope | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | BaseProductLine | unmatched — not counted | — | mentioned in findings and scope | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | Core | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | Escrow | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | GenericFactory | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | ProtocolConfig | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | BeaconProxy | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | EVault | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | ESVault | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | EulerSavingsRate | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | ConfigAmount | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | Liquidation | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | LiquidityUtils | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | Cache | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | BorrowUtils | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | BalanceUtils | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | AssetTransfers | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | LTVUtils | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | Initialize | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | Borrowing | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | Governance | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | Vault | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | Token | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | RiskManager | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | BalanceForwarder | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | Snapshot | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | UserStorage | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | Constants | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | BaseIRM | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | IRMClassLido | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | IRMClassMajor | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | IRMClassMega | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | IRMClassMidCap | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | IRMClassOHM | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | IRMClassStable | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | IRMClassUSDT | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | IRMDefault | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | BaseIRMLinearKink | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | PegStabilityModule | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | Dispatch | unmatched — not counted | — | mentioned in findings | no |
| | 12 February 2024 | FeeFlow | Team Omega | [Team Omega FeeFlow Report]() | | FeeFlowController | unmatched — not counted | — | mentioned in scope and findings | no |
| | 6 February 2024 | FeeFlow | Zellic | [Zellic FeeFlow Report]() | | FeeFlowController | unmatched — not counted | — | listed in scope table | no |
| | 6 February 2024 | FeeFlow | Zellic | [Zellic FeeFlow Report]() | | MinimalEVCClient | unmatched — not counted | — | listed in scope table | no |
| EnigmaDark_EVK_report.pdf | Euler Vault Kit | unmatched — not counted | — | mentioned as codebase under audit | no |
| EnigmaDark_EVK_report.pdf | EVK | unmatched — not counted | — | abbreviation for Euler Vault Kit, the audited system | no |
| EnigmaDark_EVK_report.pdf | RiskManager | unmatched — not counted | — | referenced in finding H-02 as RiskManager::107 | no |
| Euler Trail of Bits report.pdf | EthereumVaultConnector | unmatched — not counted | — | main contract in scope | no |
| Euler Trail of Bits report.pdf | VaultBase | unmatched — not counted | — | mentioned in Slither script as inherited contract | no |
| Euler Trail of Bits report.pdf | EVCClient | unmatched — not counted | — | mentioned in Slither script as inherited contract | no |
| Euler Trail of Bits report.pdf | ExecutionContext | unmatched — not counted | — | mentioned as separate library in maturity evaluation | no |
| Euler Hunter Security report.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| Euler Hunter Security report.pdf | EthereumVaultConnector | unmatched — not counted | — | listed in scope | no |
| Euler Hunter Security report.pdf | Events | unmatched — not counted | — | listed in scope | no |
| Euler Hunter Security report.pdf | ExecutionContext | unmatched — not counted | — | listed in scope | no |
| Euler Hunter Security report.pdf | Set | unmatched — not counted | — | listed in scope | no |
| Euler Hunter Security report.pdf | TransientStorage | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC).pdf | IERC1271 | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC).pdf | IEthereumVaultConnector | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC).pdf | IVault | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC).pdf | Errors | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC).pdf | EthereumVaultConnector | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC).pdf | Events | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC).pdf | ExecutionContext | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC).pdf | Set | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC).pdf | TransientStorage | unmatched — not counted | — | listed in scope | no |
| Euler Certora report.pdf | EthereumVaultConnector | unmatched — not counted | — | Listed in scope and findings sections | no |
| Cantina_competition_report.pdf | PegStabilityModule | unmatched — not counted | — | mentioned in finding contexts and scope | no |
| Cantina_competition_report.pdf | ESynth | unmatched — not counted | — | mentioned in finding contexts and scope | no |
| Cantina_competition_report.pdf | EthereumVaultConnector | unmatched — not counted | — | mentioned in finding contexts and scope | no |
| Cantina_competition_report.pdf | BaseRewardStreams | unmatched — not counted | — | mentioned in finding contexts and scope | no |
| Cantina_competition_report.pdf | Liquidation | unmatched — not counted | — | mentioned in finding contexts and scope | no |
| Cantina_competition_report.pdf | Borrowing | unmatched — not counted | — | mentioned in finding contexts and scope | no |
| Cantina_competition_report.pdf | RiskManager | unmatched — not counted | — | mentioned in finding contexts and scope | no |
| Cantina_competition_report.pdf | IRMSynth | unmatched — not counted | — | mentioned in finding contexts and scope | no |
| Cantina_competition_report.pdf | MetaProxyDeployer | unmatched — not counted | — | mentioned in finding contexts and scope | no |
| Cantina_competition_report.pdf | BorrowUtils | unmatched — not counted | — | mentioned in finding contexts and scope | no |
| Cantina_competition_report.pdf | EVault | unmatched — not counted | — | mentioned in finding contexts and scope | no |
| ChainSecurity_EVK_report.pdf | Dispatch | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | DToken | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | EVault | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | IEVault | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | BalanceForwarder | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | Borrowing | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | Governance | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | Initialize | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | Liquidation | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | RiskManager | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | Token | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | Vault | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | AssetTransfers | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | BalanceUtils | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | Base | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | BorrowUtils | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | Cache | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | Constants | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | EVCClient | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | Events | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | LiquidityUtils | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | LTVUtils | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | Storage | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | AddressUtils | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | ConversionHelpers | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | ProxyUtils | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | RevertBytes | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | RPow | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | SafeERC20Lib | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | AmountCap | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | Assets | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | ConfigAmount | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | Flags | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | LTVConfig | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | Owed | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | Shares | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | Snapshot | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | Types | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | UserStorage | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | VaultCache | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | VaultStorage | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | IIRM | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | IRMLinearKink | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | IBalanceTracker | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | IFlashLoan | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | IHookTarget | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | IPermit2 | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | IPriceOracle | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | BaseProductLine | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | Core | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | Escrow | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | IProtocolConfig | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | ProtocolConfig | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | BeaconProxy | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | GenericFactory | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | MetaProxyDeployer | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | ERC20Collateral | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | ESynth | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | EulerSavingsRate | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | IRMSynth | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | PegStabilityModule | unmatched — not counted | — | listed in scope | no |
| Omniscia_EVK_report.pdf | Assets | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | AmountCap | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | AssetTransfers | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | Base | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | Borrowing | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | BeaconProxy | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | BorrowUtils | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | BalanceUtils | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | BalanceForwarder | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | Cache | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | Constants | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | ConfigAmount | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | ConversionHelpers | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | DToken | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | Dispatch | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | ESynth | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | EVault | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | Errors | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | Events | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | EVCClient | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | ERC20Collateral | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | EulerSavingsRate | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | Flags | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | Governance | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | GenericFactory | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | IRMSynth | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | Initialize | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | IRMLinearKink | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | LTVType | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | LTVUtils | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | LTVConfig | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | Liquidation | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | LiquidityUtils | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | MetaProxyDeployer | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | Owed | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | ProxyUtils | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | ProtocolConfig | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | PegStabilityModule | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | RPow | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | RevertBytes | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | RiskManager | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | Shares | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | Storage | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | Snapshot | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | SafeERC20Lib | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | Token | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | Types | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | UserStorage | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | Vault | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | VaultCache | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | VaultStorage | unmatched — not counted | — | listed in scope table | no |
| yAudit_competition_fixes_report.pdf | EVC | unmatched — not counted | — | listed in scope section | no |
| yAudit_competition_fixes_report.pdf | RewardStreams | unmatched — not counted | — | listed in scope section | no |
| yAudit_competition_fixes_report.pdf | EPO | unmatched — not counted | — | listed in scope section | no |
| yAudit_competition_fixes_report.pdf | EVault | unmatched — not counted | — | listed in scope section | no |
| yAudit_competition_fixes_report.pdf | ESynth | unmatched — not counted | — | mentioned in EVK issues | no |
| yAudit_competition_fixes_report.pdf | EulerSavingsRate | unmatched — not counted | — | mentioned in EVK issues | no |
| yAudit_competition_fixes_report.pdf | PegStabilityModule | unmatched — not counted | — | mentioned in EVK issues | no |
| yAudit_competition_fixes_report.pdf | BalanceUtils | unmatched — not counted | — | mentioned in EVK issues | no |
| yAudit_competition_fixes_report.pdf | ERC20Collateral | unmatched — not counted | — | mentioned in enhancements | no |
| yAudit_competition_fixes_report.pdf | ERC20EVCCompatible | unmatched — not counted | — | mentioned in enhancements | no |
| yAudit_competition_fixes_report.pdf | IRM | unmatched — not counted | — | mentioned in enhancements | no |
| yAudit_competition_fixes_report.pdf | TransientStorage | unmatched — not counted | — | mentioned in EVC issues | no |
| yAudit_competition_fixes_report.pdf | DistributionStorage | unmatched — not counted | — | mentioned in enhancements | no |
| Euler_Price_Oracle_BailSec_Report.pdf | ChainlinkInfrequentOracleXStocks | unmatched — not counted | — | Listed in scope section with file path | no |
| Euler_Price_Oracle_BailSec_Report.pdf | HookTargetTermsOfUse | unmatched — not counted | — | Listed in scope section with file path | no |
| Euler_Price_Oracle_BailSec_Report.pdf | SwapVerifier | unmatched — not counted | — | Listed in scope section with file path | no |
| Euler_Price_Oracle_Omniscia_Report.pdf | AggregatorV3Interface | unmatched — not counted | — | listed in scope table | no |
| Euler_Price_Oracle_Omniscia_Report.pdf | BaseAdapter | unmatched — not counted | — | listed in scope table | no |
| Euler_Price_Oracle_Omniscia_Report.pdf | ChainlinkOracle | unmatched — not counted | — | listed in scope table | no |
| Euler_Price_Oracle_Omniscia_Report.pdf | ChronicleOracle | unmatched — not counted | — | listed in scope table | no |
| Euler_Price_Oracle_Omniscia_Report.pdf | Errors | unmatched — not counted | — | listed in scope table | no |
| Euler_Price_Oracle_Omniscia_Report.pdf | EulerRouter | unmatched — not counted | — | listed in scope table | no |
| Euler_Price_Oracle_Omniscia_Report.pdf | Governable | unmatched — not counted | — | listed in scope table | no |
| Euler_Price_Oracle_Omniscia_Report.pdf | LidoOracle | unmatched — not counted | — | listed in scope table | no |
| Euler_Price_Oracle_Omniscia_Report.pdf | PythOracle | unmatched — not counted | — | listed in scope table | no |
| Euler_Price_Oracle_Omniscia_Report.pdf | RethOracle | unmatched — not counted | — | listed in scope table | no |
| Euler_Price_Oracle_Omniscia_Report.pdf | RedstoneCoreOracle | unmatched — not counted | — | listed in scope table | no |
| Euler_Price_Oracle_Omniscia_Report.pdf | SDaiOracle | unmatched — not counted | — | listed in scope table | no |
| Euler_Price_Oracle_Omniscia_Report.pdf | ScaleUtils | unmatched — not counted | — | listed in scope table | no |
| Euler_Price_Oracle_Omniscia_Report.pdf | UniswapV3Oracle | unmatched — not counted | — | listed in scope table | no |
| Euler_Price_Oracle_yAudit_PendleOracle_Report.pdf | PendleOracle | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | EthereumVaultConnector | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | Events | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | ExecutionContext | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | Set | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | TransientStorage | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | IERC1271 | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | IEthereumVaultConnector | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | IVault | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | EVCUtil | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | DToken | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | Dispatch | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | EVault | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | IEVault | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | BalanceForwarder | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | Borrowing | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | Governance | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | Initialize | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | Liquidation | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | RiskManager | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | Token | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | Vault | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | AssetTransfers | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | BalanceUtils | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | Base | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | BorrowUtils | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | Cache | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | Constants | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | EVCClient | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | LTVUtils | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | LiquidityUtils | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | Storage | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | ConversionHelpers | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | ProxyUtils | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | RPow | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | RevertBytes | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | SafeERC20Lib | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | AmountCap | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | Assets | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | ConfigAmount | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | Flags | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | LTVConfig | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | LTVType | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | Owed | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | Shares | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | Snapshot | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | Types | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | UserStorage | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | VaultCache | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | VaultStorage | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | BeaconProxy | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | GenericFactory | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | MetaProxyDeployer | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | IIRM | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | IRMLinearKink | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | BaseProductLine | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | Core | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | Escrow | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | IProtocolConfig | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | ProtocolConfig | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | ERC20Collateral | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | ESynth | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | EulerSavingsRate | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | IRMSynth | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | PegStabilityModule | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | IBalanceTracker | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | IPermit2 | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | IPriceOracle | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | EulerRouter | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | BaseAdapter | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | CrossAdapter | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | AggregatorV3Interface | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | ChainlinkOracle | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | ChronicleOracle | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | IChronicle | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | IStEth | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | LidoOracle | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | IPot | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | SDaiOracle | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | PythOracle | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | RedstoneCoreOracle | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | IReth | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | RethOracle | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | UniswapV3Oracle | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | Governable | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | ScaleUtils | unmatched — not counted | — | listed in scope | no |
| Euler Omniscia report.pdf | Errors | unmatched — not counted | — | listed in scope table | no |
| Euler Omniscia report.pdf | Events | unmatched — not counted | — | listed in scope table | no |
| Euler Omniscia report.pdf | EVCUtil | unmatched — not counted | — | listed in scope table | no |
| Euler Omniscia report.pdf | ExecutionContext | unmatched — not counted | — | listed in scope table | no |
| Euler Omniscia report.pdf | EthereumVaultConnector | unmatched — not counted | — | listed in scope table | no |
| Euler Omniscia report.pdf | Set | unmatched — not counted | — | listed in scope table | no |
| Euler Omniscia report.pdf | TransientStorage | unmatched — not counted | — | listed in scope table | no |
| Euler Spearbit report.pdf | EthereumVaultConnector | unmatched — not counted | — | Listed in scope and findings context | no |
| Euler Spearbit report.pdf | IEthereumVaultConnector | unmatched — not counted | — | Listed in findings context | no |
| Euler Spearbit report.pdf | EVCUtil | unmatched — not counted | — | Listed in findings context | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | Errors | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | EthereumVaultConnector | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | Events | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | ExecutionContext | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | Set | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | TransientStorage | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | IERC1271 | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | IEthereumVaultConnector | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | IVault | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | EVCUtil | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | DToken | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | Dispatch | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | EVault | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | IEVault | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | BalanceForwarder | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | Borrowing | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | Governance | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | Initialize | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | Liquidation | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | RiskManager | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | Token | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | Vault | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | AssetTransfers | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | BalanceUtils | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | Base | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | BorrowUtils | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | Cache | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | Constants | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | EVCClient | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | LTVUtils | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | LiquidityUtils | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | Storage | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | ConversionHelpers | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | ProxyUtils | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | RPow | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | RevertBytes | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | SafeERC20Lib | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | AmountCap | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | Assets | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | ConfigAmount | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | Flags | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | LTVConfig | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | LTVType | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | Owed | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | Shares | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | Snapshot | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | Types | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | UserStorage | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | VaultCache | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | VaultStorage | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | BeaconProxy | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | GenericFactory | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | MetaProxyDeployer | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | IIRM | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | IRMLinearKink | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | BaseProductLine | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | Core | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | Escrow | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | IProtocolConfig | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | ProtocolConfig | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | ERC20Collateral | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | ESynth | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | EulerSavingsRate | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | IRMSynth | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | PegStabilityModule | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | IBalanceTracker | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | IPermit2 | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | IPriceOracle | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | EulerRouter | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | BaseAdapter | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | CrossAdapter | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | AggregatorV3Interface | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | ChainlinkOracle | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | ChronicleOracle | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | IChronicle | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | IStEth | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | LidoOracle | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | IPot | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | SDaiOracle | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | PythOracle | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | RedstoneCoreOracle | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | IReth | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | RethOracle | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | UniswapV3Oracle | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | Governable | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | ScaleUtils | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 105 |
| upstream | 2 |
| standard_library | 2 |
| needs_review | 495 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 73
- Inherited remapped matches: 0
- Address-book scope dispositions: 8 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 887 unmatched
- Matched-own operational status: 8 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=68, low=6, medium=8
- Match method counts: unique_name=9

Zero-match audit list:

- [17249] Learn more
- [17251] Pashov_Audit_Group_report.pdf
- [17252] Certora_EulerEarn_report.pdf
- [17253] Sigma_Prime_EulerEarn_report.pdf
- [17254] Rendered PDF capture
- [17255] Rendered PDF capture
- [17257] Omniscia Euler Earn Report
- [17259] Certora EulerEarn
- [17260] Sigma Prime EulerEarn
- [17265] Fuzzland EulerSwap
- [17267] report-cantinacode-euler-0901.pdf
- [17268] yAudit ERC4626 and Vault Securitize Report
- [17269] Pashov Group ERC4626 and Vault Securitize Report
- [17270] | 2 December 2024 | EVK Periphery - ERC20 Burnable Mintable | BailSec | [BailSec ERC20BurnableMintable Report]() |
- [17271] | 1 June 2025 | EUL ERC20 | BailSec | [BailSec EUL ERC20 Report]() |
- [17272] | 11 March 2026 | EVK Periphery (Oracle, Hook, SwapVerifier) | BailSec | [BailSec EVK Periphery Oracle Hook SwapVerifier Report]() |
- [17273] | 1 August 2025 | HookTargetMarketStatus | CD Security | [CD Security HookTargetMarketStatus Report]() |
- [17274] CDSecurity ERC20 Wrapper Locked.pdf
- [17275] | 5 February 2025 | Adaptive IRM | Electisec | [Electisec Adaptive IRM Report]() |
- [17276] | 14 October 2025 | ERC20Synth & Auxiliary Contracts | Electisec | [Electisec ERC20Synth and Auxiliary Contracts Report]() |
- [17277] | 11 March 2025 | GovernorAccessControlEmergencyFactory | Electisec | [Electisec GovernorAccessControlEmergencyFactory Report]() |
- [17279] | 22 April 2025 | HookTargetStakeDelegator | MixBytes | [MixBytes HookTargetStakeDelegator Report]() |
- [17280] Paladin LayerZero Adapters.pdf
- [17281] | 14 October 2025 | ERC20Synth & Auxiliary Contracts | Spearbit | [Spearbit ERC20Synth and Auxiliary Contracts Report]() |
- [17282] | 13 June 2025 | IRMLinearKinky | Supremacy | [Supremacy IRMLinearKinky Report]() |
- [17285] | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() |
- [17286] | 20 September 2024 | EVK Periphery Forta Firewall hooks | yAudit - Forta Firewall Attestation hooks | [yAudit - EVK Periphery - Forta Firewall hooks Report]() |
- [17287] yAudit SwapVerifier update.pdf
- [17288] yAudit rEUL ERC20 Wrapper Locked.pdf
- [17289] yAudit_Euler_Deployment_Polygon_Avalanche_Report.pdf
- [17290] Euler Rescue StrategyEuler07 November 2025 - 12 November 2025
- [17291] Euler - PR111Euler26 October 2025 - 28 October 2025
- [17295] | 18 February 2025 | EPO (PR#78, PR#79) | Electisec | [Electisec EPO Report]() |
- [17296] | 4 February 2025 | setLTV | Electisec | [Electisec setLTV Report]() |
- [17297] | 20 January 2025 | EVK | Cantina | [M4rio.eth SetLTV Report]() |
- [17301] | 5 September 2024 | EPO | yAudit | [yAudit EPO Update review Report]() |
- [17302] | 8 July 2024 | Euler V2 | yAudit | [yAudit CodeCompetition Fixes review]() |
- [17303] | 20 July 2024 | Origami Oracle Adapters | yAudit | [yAudit Origami Oracle Adapters Report]() |
- [17304] | 14 June 2024 | Synths | OpenZeppelin | [OpenZeppelin Synths Report]() |
- [17305] | 9 May 2024 | Reward Streams | Mixbytes | [Mixbytes Reward Streams Report]() |
- [17306] | 1 May 2024 | Reward Streams | Hunter Security | [Hunter Security Reward Streams Report]() |
- [17307] | 29 April 2024 | EPO | ChainSecurity | [ChainSecurity Oracle Report]() |
- [17308] | 22 April 2024 | Euler V2 | Cantina CodeCompetition | [Cantina CodeCompetition Report]() |
- [17309] | 8 April 2024 | EVC | ChainSecurity | [ChainSecurity EVC Report]() |
- [17310] | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() |
- [17311] | 8 April 2024 | EPO | Spearbit | [Spearbit EPO Report]() |
- [17312] | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() |
- [17313] | 8 April 2024 | EPO | OpenZeppelin | [OpenZeppelin Oracle Report]() |
- [17314] | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() |
- [17315] | 18 March 2024 | EVC | Omniscia | [Omniscia EVC Report]() |
- [17316] | 18 March 2024 | EVK | Omniscia | [Omniscia EVK Report]() |
- [17317] | 18 March 2024 | EPO | Omniscia | [Omniscia EPO Report]() |
- [17318] | 18 March 2024 | EVC | OpenZeppelin | [OpenZeppelin EVC Report]() |
- [17319] | 7 March 2024 | EVK | Certora | [Certora EVK Report]() |
- [17320] | 19 February 2024 | FeeFlow | Ottersec - FeeFlow | [Ottersec FeeFlow Report]() |
- [17321] | 12 February 2024 | FeeFlow | Team Omega | [Team Omega FeeFlow Report]() |
- [17322] | 6 February 2024 | FeeFlow | Zellic | [Zellic FeeFlow Report]() |
- [17323] EnigmaDark_EVK_report.pdf
- [17324] Euler Trail of Bits report.pdf
- [17325] Euler Hunter Security report.pdf
- [17326] Euler yAudit report (EVC).pdf
- [17327] Euler Certora report.pdf
- [17328] Cantina_competition_report.pdf
- [17329] ChainSecurity_EVK_report.pdf
- [17330] Omniscia_EVK_report.pdf
- [17331] yAudit_competition_fixes_report.pdf
- [17334] Euler_Price_Oracle_BailSec_Report.pdf
- [17335] Euler_Price_Oracle_Omniscia_Report.pdf
- [17336] Euler_Price_Oracle_yAudit_PendleOracle_Report.pdf
- [17337] Euler_Price_Oracle_yAudit_Report.pdf
- [17338] Euler Omniscia report.pdf
- [17339] Euler Spearbit report.pdf
- [17340] Euler yAudit report (EVC + EVK + Price Oracle).pdf

Fork inheritance lineage and inherited audits are included when available.
