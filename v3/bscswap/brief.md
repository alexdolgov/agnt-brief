# Agentic Audit Brief: BSCSwap

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

- Project: BSCSwap (`bscswap`)
- Website: [https://bscswap.com/](https://bscswap.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc
- Contract surface: 36 unique implementations (118 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $4,162,856.01
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

The closed normalized authority records no EVM contract logic or eligible security audit for this project. This is an explicit cohort state, not a skipped export.

## Project Description

No contract logic was present for BSCSwap in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Outside the address book: 36 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/28
- Verified + Unaudited implementations: 28
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 36
- Raw deployments: 118
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

### ⚠️ Verified + Unaudited (28)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcd984bcc5c690a077217e8ad39a98d276ebaaa31` | ⚠️ Unaudited |
| BAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaa8012a0ea627767545a8e435c2a2bd51f60173d` | ⚠️ Unaudited |
| BFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x67eb6eea7f04e27ba3764e0fd90d92ebef2d6216` | ⚠️ Unaudited |
| BRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x164a50b89edc1c3702d45a38db4881c9b268ddda` | ⚠️ Unaudited |
| BSCswap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xacc234978a5eb941665fd051ca48765610d82584` | ⚠️ Unaudited |
| BSCswapFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xce8fd65646f2a2a897755a1188c04ace94d2b8d0` | ⚠️ Unaudited |
| BSCswapPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xc5c84863d32f41ad60eb2dead2d69c9553541616`; bsc `0xe61d0dbf43bb74d8f0e03a70f815a7c9f8626e15` | ⚠️ Unaudited |
| BSCswapRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd954551853f55deb4ae31407c423e67b1621424a` | ⚠️ Unaudited |
| BSCswapV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcb75583a180b8b5f5ba6087ab8f47c15792a895a` | ⚠️ Unaudited |
| BSWAPStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7b2dac429df0b39390cd3d4e6a8b8bcceb331e2d` | ⚠️ Unaudited |
| BurnPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 17 deployments: bsc `0x01f46acc8f739d635c9517077641b1b59c415896`; bsc `0x122957e6b456714d68b79b200ab50c517dbd046f`; bsc `0x3073ef6e909be86d5fd55f39dc5a3c85ef2b41b4`; bsc `0x354d80e7aa08878fe97e019f3dac87cb86f9ed39`; bsc `0x3e9e1eaac6d9e745ef1ad4e4d032b56086e54393`; bsc `0x563d0e48880bf561f96d171a0bd5fef78d1b93f6`; bsc `0x589bd7abd37722b011135b1f42c48e1217c4fe2c`; bsc `0x65baa9ffb3c88a3ef8beef1b65ccaaaa89cb85a4`; bsc `0x750cd08645840c56bae19afa4b41d6c145a36e13`; bsc `0x7d40f6cdc8ba426e70bbc67bb3742e437c307c94`; bsc `0x8fdef97845f4304f84291cd4ce9bcc279a41b373`; bsc `0x9ba67f99efd9cf634393da7d7db4ae7c83b969e0`; bsc `0x9bad51231721a1c38ed0790c65a968f8a3e9519a`; bsc `0xa32cf5ce54e92745c23cdb4b3ca60d439725048f`; bsc `0xbeeb4173f906e3cb395b04c7ca8ed389a97e9a12`; bsc `0xd88a59ea5b0c4e0f50eb8971dd44613e6ea99d33`; bsc `0xe8c3aeceed2dd99e1c147a519f01e52f9ae68b8d` | ⚠️ Unaudited |
| Degenerates | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb37b51c5c4c934468b49b55fec15e76c9b538ff3` | ⚠️ Unaudited |
| DegenPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 30 deployments: bsc `0x0ccbc7e03fde545e3ed78bb8326adc414a0ca044`; bsc `0x0d08cee6fd9cb435d32489813850ad773cb8bd43`; bsc `0x0ec0619a3084d7341d7736f1a2737c65bbd2e0e8`; bsc `0x1511902cd318107708c96e5cea6a13509aa3c8a0`; bsc `0x18da562da24e6b60577dd6becf08a4bab19a0f03`; bsc `0x23e961c521d6001970c3e4585835d82f4435237a`; bsc `0x25f34e1807b3638476cd0bb92d56637fbab0c92b`; bsc `0x28a1b87cddb4bcc67fc4a2d8d17935a2c9b04612`; bsc `0x2aeb4707bf228efdd3355d60e15488cb94ea65c1`; bsc `0x3973a1cf4507d44356ff332d035b7721721e65f0`; bsc `0x4b5a081299291a42225dd3db8640c4c2626c5be3`; bsc `0x4dfb8e807627cfd80a3d6b1ae811c0b0550e7160`; bsc `0x4ec29949c9288792420f2605fe2bc47530397968`; bsc `0x553d0cd88b5e6ed0c4967339545c5293519ffb8f`; bsc `0x58d919c3cdc48bea168f40bf2b1a4b69a7505e39`; bsc `0x729cea5a2378a2448bfa711e044adc7503c7c419`; bsc `0x84e012dab25abf831d3826d40e786e0a5e4f1f45`; bsc `0x8a0725e01b14a6e05ecc1e1f4d7360a047bf3db4`; bsc `0x992c6d42a873097f394c65eb88d3e8f5ff437a8f`; bsc `0x9e17af47aacfc6564087c1e731181d88265d45da`; bsc `0xa2095dddac20480e956ec4c1331398b7428c1ba0`; bsc `0xa90d759d5dd249507b48c6b404e72fb434d37c5e`; bsc `0xb5986d424c96b6ea51f4b46fb38804ffe414d12f`; bsc `0xc24b12ede3312afa60a7256e40896ea91d35c0ec`; bsc `0xc6cbdfcb38c4d541aac39f94330a82be030491e2`; bsc `0xc92e84bd76743195b2fc0711ee2880cadfee62d8`; bsc `0xccb983e9a68d5c186de359d8250a8511fbda4ad4`; bsc `0xd1bd76a310c97556d071d877c8586f13feee954d`; bsc `0xdccacafdfec6193cd738506503548f44683cea38`; bsc `0xe427f3981c1e7e35e903e070e23111972a8fe782` | ⚠️ Unaudited |
| DSProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6ad1b847ec702d451bfeac329590d6230ca95dee` | ⚠️ Unaudited |
| Earth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3bee8422f2e6f99c43351ebe53b0b7a6c3079255` | ⚠️ Unaudited |
| ExchangeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4a4c55e4dd83f507e81186f317332abcff7d98d6` | ⚠️ Unaudited |
| IDO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 11 deployments: bsc `0x3e5619b262d1492c03c6388004493654e17a329c`; bsc `0x4526b156d5cd7fc279fae575347f1e98fd220142`; bsc `0x55240987107c49519bf9cbe3fda845df757bddca`; bsc `0x84798e08488e77e3a7e97d38ae2a2507de0ca18e`; bsc `0xa0e74fa146f923eeb9737a33dda5a4464fa730c5`; bsc `0xd55aba6eec84aadefb8492d0d547ff0f4a09c8a0`; bsc `0xd6319a027ec2ca6842b4139d2f17b1a229f475cd`; bsc `0xe3d30111560798c6241b6323c813e7d7786bf250`; bsc `0xec93928de8dff70d00d7c5fd50a36ca4608382de`; bsc `0xf319c31833f339b13723569cbcaa320cc3ad350c`; bsc `0xf7441726283bb51be9599d3011489adeaa2b61c7` | ⚠️ Unaudited |
| LaunchField | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 16 deployments: bsc `0x15c67f69f0b99684e44d7e00fe64141b0b90fa5c`; bsc `0x1d98cbdf1ead407a58290a0208c06f6e1d4cd7fa`; bsc `0x43fcbec712569285d0fe07c6f1302361e5ea6559`; bsc `0x589829d68078d7038017a832da97162a2dc2ae0d`; bsc `0x62d6eeaf4e1895ce72bf10f8b0dbdb0e1dd4cb08`; bsc `0x73605bff9baf9797eb6d15458108ea9fd628bb62`; bsc `0x8d2e3fdeac84831efeaefd4c81b2397254fdab12`; bsc `0x9b20a1315746d3204b261121c5b06f59350889c4`; bsc `0xa56a3d22405803c71a291056d6b2f84b1914069c`; bsc `0xdb9919b59526f3355044c140fe3f3b90980ca680`; bsc `0xdd4090a69c5279f937a1c89b222f680d4b97333d`; bsc `0xe394b087889d6d2e8eba110bfe376079e3c2682a`; bsc `0xe5e2d9e9742f6622fff44001517eb6b27a794e6a`; bsc `0xed04964388af73916fdc4ef86abfdb98f96d8ecb`; bsc `0xee3c30085ffc4109d5db291f31fa0ed939aeee5d`; bsc `0xf5746b8278fea8f0964679fcd08c6f1bab78bd49` | ⚠️ Unaudited |
| LFIStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbf56ed686f70b8e82300e0d85d87f0afd5737a78` | ⚠️ Unaudited |
| LFIStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x67f6da76ea5926baa823a539e7f6c93fbbf597da`; bsc `0x80b56fd66f067b4d25700104ea61449e25fd238e`; bsc `0x92605efa9de4e00d72b25f7c805f15a59194bd1a` | ⚠️ Unaudited |
| LFIVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x2fd8ad2546db48cc0666d6f1a12aba3ca056fca8`; bsc `0x322b4046be800b55b1c314162797ce416e569994`; bsc `0x7859876fceea9d085db181f9b1affc2f70036863` | ⚠️ Unaudited |
| LOADeFi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x2282d18c5232ac20a41c0a0709367becade2f751`; bsc `0x7661c7714a2ae18bd224d2bfa7619d6ab7b8f640`; bsc `0xc924d95947ea703a1259815fe5aaa0daef760c44` | ⚠️ Unaudited |
| Moon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9e90af2ea159190c84012b09067689ba8ac0d9b3` | ⚠️ Unaudited |
| MoonRabbit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8c4fc5416160bf4a1be2128aad8a709f15b50b1b` | ⚠️ Unaudited |
| MoonRabit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xff795d617a1d2aadaab7745d9626402680fa63a5` | ⚠️ Unaudited |
| ProxyRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x357d922c71a2db0ce4a7af07d3fb6c97a8db2bc4` | ⚠️ Unaudited |
| Refunded | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x1326e30fd407e23067ffe0545078082e3b7a9550`; bsc `0x4642fa71ecf38b87ccc34db9e6f82acdbabfb217`; bsc `0x82a574004ed2784f967a0373a962f8ed029bc0c6`; bsc `0xc5a993a91cab9762833b1fa099e761f4a7d677b6`; bsc `0xc851da70914e72a09dd1be8a177282296f43618f` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x15ea853b07382dc2ac8f91933446ac459737e4a6`; bsc `0x39c56bda66dc8c2e17feb350dc504e12b98abde2` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x018e9728ffef222885a33bebfde054406bd134c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1e9c90baf81a2c3ecde6127687c2728d152fc1e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3b00cf80106004b3c7662c027e815cd9dd0c7d15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x587f503d7e81e7957687aef1e3b700973e9fd8e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8ef09f327f6862a9c4fbfd6f91aa5be5747d666c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe112f5e71b743a376220cc9b20d7e8df00e7394f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe4aea0303f8c373d1b421c5e047547360891347f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf6c7971b4cbcdce42e541f8c0649e3d24e81d63a` | ❓ Unverified |

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
| native | 28 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 8 |

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
