# Agentic Audit Brief: Artemis Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 5 (2 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Artemis Finance (`artemis-finance`)
- Website: [https://artemisfinance.io/](https://artemisfinance.io/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum, goat, metis
- Contract surface: 79 unique implementations (79 raw deployments)
- Coverage basis: 1/14 confirmed own live verified implementations (7.1%); conservative 7.1% with 0 needs-review implementation(s)
- DeFi Llama TVL: $717,498.11
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Artemis Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across ethereum, goat, metis. Structural roles: 4 infra, 1 supporting. 5 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: infra (4), supporting (1)
- Contract kinds: contract (5)
- Detected standards: erc1967proxy (3), ownable (2), accesscontrol (1), erc165 (1)
- Frameworks: openzeppelin (5), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 5

## Fork Analysis

0 of 27 contracts are derived from known codebases. 27 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x02f294cc9ceb2c80fba3fd779e17fe191cc360c4`, chain 2345)
- UnnamedContract (`0x17e5da1affacdc2eb228a74ad574f59cc064a31f`, chain 2345)
- UnnamedContract (`0x3a45af4c00f47a62ed2e60fa21f3186e31657157`, chain 2345)
- UnnamedContract (`0x4daa7575c42a338694e29717a3f622cb85d9dca4`, chain 2345)
- UnnamedContract (`0x5f0d03e20bb2973fdbfe271c84603de48d93b88f`, chain 2345)
- UnnamedContract (`0x941508f0b823f1bc40a9beefce5e544e525a94c3`, chain 2345)
- UnnamedContract (`0x9a5f06cf2e8ecce58bb239689978ee2f2977c785`, chain 2345)
- UnnamedContract (`0xa3027972e2bf168d3df12a1533f073b330126f34`, chain 2345)
- UnnamedContract (`0xb2d167eb1fff17ebd727b0a21e7f5f50424264c8`, chain 2345)
- UnnamedContract (`0xd78ff6690384cc609e1fee15fd7bf3a8cf8c73b1`, chain 2345)
- UnnamedContract (`0xe4cbfda9f6038194b150dbf857f7a8afb2f3567e`, chain 2345)
- UnnamedContract (`0xe5474aee9ff3221c4621a151b0f090f208b47287`, chain 2345)
- UnnamedContract (`0xed4dccc6889bb99e6c13821b324b531ad89e1cf2`, chain 2345)
- EACAggregatorProxy (`0xd4a5bb03b5d66d9bf81507379302ac2c2dfdfa6d`, chain 1088)
- MerkleDistributorFactory (`0xb2d167eb1fff17ebd727b0a21e7f5f50424264c8`, chain 1088)
- ProxyAdmin (`0x479603de0a8b6d2f4d4eaa1058eea0d7ac9e218d`, chain 1088)
- TransparentUpgradeableProxy (`0x014e8248d3b681d4ed703de60885052ff4321f5d`, chain 1)
- TransparentUpgradeableProxy (`0x0cf6ab3c169b0169e35ad58d350cbacdaf80e139`, chain 1088)
- TransparentUpgradeableProxy (`0x13e029b6631c0540126c2cdf1675316c971beb94`, chain 1088)
- TransparentUpgradeableProxy (`0x22fc5a29bd3d6cce19a06f844019fd506fce4455`, chain 1088)
- TransparentUpgradeableProxy (`0x2583a2538272f31e9a15dd12a432b8c96ab4821d`, chain 1088)
- TransparentUpgradeableProxy (`0x357f55b46821a6c6e476cc32ebb2674cd125e849`, chain 1088)
- TransparentUpgradeableProxy (`0x4d32c8ff2facc771ec7efc70d6a8468bc30c26bf`, chain 1088)
- TransparentUpgradeableProxy (`0x500d5e0d9d7337963ed6449e81cb52928184d3d6`, chain 1088)
- TransparentUpgradeableProxy (`0x70f61901658aafb7ae57da0c30695ce4417e72b9`, chain 1088)
- TransparentUpgradeableProxy (`0x96c4a48abdf781e9c931cfa92ec0167ba219ad8e`, chain 1088)
- UpgradeableBeacon (`0x2350ea954113b1a1eebaaccc47f3a4985f709913`, chain 1088)

## Contract Surface Quality

- Logic-topography rows: 5; live-surface rows included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 27/40 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/14 (7.1%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 27 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 52 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 27 of 79 unique; 52 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/29
- Verified + Unaudited implementations: 28
- Verified by bytecode match: 0
- Unverified implementations: 50
- Unique implementations: 79
- Raw deployments: 79
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 1 fresh, 2 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| WatchPug | Tier 2 | 1 | 3.4% | 2025-11 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MerkleDistributorFactory | unknown | project_anchor | own_supporting | 0 | metis | unit-379733 | `0xb2d167eb1fff17ebd727b0a21e7f5f50424264c8` | ✅ Audited |

### ⚠️ Verified + Unaudited (28)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessControlledOffchainAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x06f58206aed15bdfc10e93082fbb399e4c94b5ed` | ⚠️ Unaudited |
| AMTConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x64627901dadb46ed7f275fd4fc87d086cff1e6e3` | ⚠️ Unaudited |
| AMTDepositPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x507fdbebdb11c71e7c7565177d0942a6fd466ced` | ⚠️ Unaudited |
| AMTRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xad29951cda3dcd0e570e65a6ee34aa455c53421c` | ⚠️ Unaudited |
| AMTWithdrawalManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x06c49988c2111d01a745deeccc757e6f6df663ce` | ⚠️ Unaudited |
| ArtMetis | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x920873e5b302a619c54c908adfb77a1c4256a3b8` | ⚠️ Unaudited |
| ConfirmedTransactionModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xed2b73c77887ad41001a6367d11e7ddea2417839` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x01da515c46209ffca4c96625fe8a1b278c805bce` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | project_anchor | own_supporting | 0 | metis | unit-379734 | `0xd4a5bb03b5d66d9bf81507379302ac2c2dfdfa6d` | ⚠️ Unaudited |
| Flags | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x42b087a1f07faf3067c460182c9ebe2fb346b04a` | ⚠️ Unaudited |
| LinkToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x79892e8a3aea66c8f6893fa49ec6208ef07ec046` | ⚠️ Unaudited |
| MerkleDistributorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x741620136cf08a782c1df1fc9e3caa760cc4fecc` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | metis | unit-379723 | `0x479603de0a8b6d2f4d4eaa1058eea0d7ac9e218d` | ⚠️ Unaudited |
| SequencerNodeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xbb1f6cff4d92073a7890b80c1245606c520f8569` | ⚠️ Unaudited |
| SimpleWriteAccessController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x345a8935ed569ba5e7abf447f3b64be8b9845404` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x135c4de9238352681efc42575eafe47d50ee9a16` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-379752 | `0x014e8248d3b681d4ed703de60885052ff4321f5d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 0 | metis | unit-379715 | `0x0cf6ab3c169b0169e35ad58d350cbacdaf80e139` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 0 | metis | unit-379716 | `0x13e029b6631c0540126c2cdf1675316c971beb94` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 0 | metis | unit-379718 | `0x22fc5a29bd3d6cce19a06f844019fd506fce4455` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 0 | metis | unit-379720 | `0x2583a2538272f31e9a15dd12a432b8c96ab4821d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 0 | metis | unit-379721 | `0x357f55b46821a6c6e476cc32ebb2674cd125e849` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 0 | metis | unit-379724 | `0x4d32c8ff2facc771ec7efc70d6a8468bc30c26bf` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 0 | metis | unit-379726 | `0x500d5e0d9d7337963ed6449e81cb52928184d3d6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 0 | metis | unit-379728 | `0x70f61901658aafb7ae57da0c30695ce4417e72b9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 0 | metis | unit-379730 | `0x96c4a48abdf781e9c931cfa92ec0167ba219ad8e` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | project_anchor | own_supporting | 0 | metis | unit-379719 | `0x2350ea954113b1a1eebaaccc47f3a4985f709913` | ⚠️ Unaudited |
| Vester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x1679fe95b11959c694af8627e5360267e146723b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (50)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x0f13cfae20b3df71eeefd67a260ecf0cf15629fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x11981cbb2e05e6033d82d1de12c9cd875d13617b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x18c61629e6cbadb85c29ba7993f251b3ebe2b356` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x192d15e79e5643d64dacdf9670add625c9d68ada` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x19a7fedaffac6a5d747c439ddad4bf34a112467f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x2bb814eed11a878251e91e4599a46ac236e1a131` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x2d338d3b5af189984a03c6785899cc681abe6c4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x324cd3f3a12c44b44269d775b2b75d5d06ccaea6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x3bbe70e2f96c87aece7f67a2b0178052f62e37fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x420af689f50b9f7b67fe506237c877b98bb24dda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x43150a57719e2c769870c58369a6bdc700e1b6de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x49b7d3d231b993c9aa29e122647e035aaf8b773b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x4a4f382a2ff9685de9f0418f1375ce16d0727637` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x51864b8948aa5e35aace2badaf901d63418a3b9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x51ed8fecf96813826f727cabdf01b3cf6a61373e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x526b00801b2a09cb730b3d2132a85fd75d0d9a44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x54389e89a5ec1d4312d5b5c48055d6e56a177bf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x5969848719f7571bdfe0e899014c270ed39b8384` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x663855969c85f3be415807250414ca9129533a5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x6c5f77352d0bc084821a4b65f9ea756190ce6bb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x72987d1d393ba5b7d39fe671ada504e5b38281db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x755ef56db57ebdbe4d2163cf9d784ed2859c08d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x7a11b4227ad6c4f926911c4c18212da0f0d6f390` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x86f1fcb32ac073951d3156929a93428902f30765` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x880af35e6172f9d4f3142cd9660498f2b6df337d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x898ca9b3ef8b6a30da5fc7202f70e7992b3602b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x8b279458b44e4f27be534a1ddb76f93bf951b106` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x9656158b18bc67ed62ece17b385ac2a696513010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x97261e57f4efb769dc39f142668d7f3ff7157302` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xa6ec3c5a9124f9fd9ce02b24ed41cfd3489f05c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xc3ebaf03ddd8f757963cab15ec498c74c0f56e1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xd5327ed4d20dc5d5634121ab8245adfd37b85711` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xdadae9ead2112c715480877ff2fe196f4af1abc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xe0351caae70b5adbd0107cd5331ad1d79c4c1ca1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xe2d12af6f5339098437986980faea24eb0b4c7e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xf72c446694080da37a7f6f22f8034192f2a87eba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xfe80d611c6403f70e5b1b9b722d2b3510b740b2b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | goat | unit-379739 | `0x02f294cc9ceb2c80fba3fd779e17fe191cc360c4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | goat | unit-379740 | `0x17e5da1affacdc2eb228a74ad574f59cc064a31f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | goat | unit-379741 | `0x3a45af4c00f47a62ed2e60fa21f3186e31657157` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | goat | unit-379742 | `0x4daa7575c42a338694e29717a3f622cb85d9dca4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | goat | unit-379743 | `0x5f0d03e20bb2973fdbfe271c84603de48d93b88f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | goat | unit-379744 | `0x941508f0b823f1bc40a9beefce5e544e525a94c3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | goat | unit-379745 | `0x9a5f06cf2e8ecce58bb239689978ee2f2977c785` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | goat | unit-379746 | `0xa3027972e2bf168d3df12a1533f073b330126f34` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | goat | unit-379747 | `0xb2d167eb1fff17ebd727b0a21e7f5f50424264c8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | goat | unit-379748 | `0xd78ff6690384cc609e1fee15fd7bf3a8cf8c73b1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | goat | unit-379749 | `0xe4cbfda9f6038194b150dbf857f7a8afb2f3567e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | goat | unit-379750 | `0xe5474aee9ff3221c4621a151b0f090f208b47287` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | goat | unit-379751 | `0xed4dccc6889bb99e6c13821b324b531ad89e1cf2` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 37
- Live contracts: 0
- Unknown liveness contracts: 37
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=37

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x0f13cfae20b3df71eeefd67a260ecf0cf15629fa` | non_address_book | unknown | unknown | unverified | n/a | `0x35d0c866c2c7866e1829f44e6aeeee4208e9239a` |
| unverified unclassified | UnnamedContract<br>`0x11981cbb2e05e6033d82d1de12c9cd875d13617b` | non_address_book | unknown | unknown | unverified | n/a | `0x35d0c866c2c7866e1829f44e6aeeee4208e9239a` |
| unverified unclassified | UnnamedContract<br>`0x18c61629e6cbadb85c29ba7993f251b3ebe2b356` | non_address_book | unknown | unknown | unverified | n/a | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| unverified unclassified | UnnamedContract<br>`0x192d15e79e5643d64dacdf9670add625c9d68ada` | non_address_book | unknown | unknown | unverified | n/a | `0x35d0c866c2c7866e1829f44e6aeeee4208e9239a` |
| unverified unclassified | UnnamedContract<br>`0x19a7fedaffac6a5d747c439ddad4bf34a112467f` | non_address_book | unknown | unknown | unverified | n/a | `0x35d0c866c2c7866e1829f44e6aeeee4208e9239a` |
| unverified unclassified | UnnamedContract<br>`0x2bb814eed11a878251e91e4599a46ac236e1a131` | non_address_book | unknown | unknown | unverified | n/a | `0x35d0c866c2c7866e1829f44e6aeeee4208e9239a` |
| unverified unclassified | UnnamedContract<br>`0x2d338d3b5af189984a03c6785899cc681abe6c4b` | non_address_book | unknown | unknown | unverified | n/a | `0x35d0c866c2c7866e1829f44e6aeeee4208e9239a` |
| unverified unclassified | UnnamedContract<br>`0x324cd3f3a12c44b44269d775b2b75d5d06ccaea6` | non_address_book | unknown | unknown | unverified | n/a | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| unverified unclassified | UnnamedContract<br>`0x3bbe70e2f96c87aece7f67a2b0178052f62e37fe` | non_address_book | unknown | unknown | unverified | n/a | `0x35d0c866c2c7866e1829f44e6aeeee4208e9239a` |
| unverified unclassified | UnnamedContract<br>`0x420af689f50b9f7b67fe506237c877b98bb24dda` | non_address_book | unknown | unknown | unverified | n/a | `0x35d0c866c2c7866e1829f44e6aeeee4208e9239a` |
| unverified unclassified | UnnamedContract<br>`0x43150a57719e2c769870c58369a6bdc700e1b6de` | non_address_book | unknown | unknown | unverified | n/a | `0x35d0c866c2c7866e1829f44e6aeeee4208e9239a` |
| unverified unclassified | UnnamedContract<br>`0x49b7d3d231b993c9aa29e122647e035aaf8b773b` | non_address_book | unknown | unknown | unverified | n/a | `0x35d0c866c2c7866e1829f44e6aeeee4208e9239a` |
| unverified unclassified | UnnamedContract<br>`0x4a4f382a2ff9685de9f0418f1375ce16d0727637` | non_address_book | unknown | unknown | unverified | n/a | `0x35d0c866c2c7866e1829f44e6aeeee4208e9239a` |
| unverified unclassified | UnnamedContract<br>`0x51864b8948aa5e35aace2badaf901d63418a3b9d` | non_address_book | unknown | unknown | unverified | n/a | `0x35d0c866c2c7866e1829f44e6aeeee4208e9239a` |
| unverified unclassified | UnnamedContract<br>`0x51ed8fecf96813826f727cabdf01b3cf6a61373e` | non_address_book | unknown | unknown | unverified | n/a | `0x35d0c866c2c7866e1829f44e6aeeee4208e9239a` |
| unverified unclassified | UnnamedContract<br>`0x526b00801b2a09cb730b3d2132a85fd75d0d9a44` | non_address_book | unknown | unknown | unverified | n/a | `0x35d0c866c2c7866e1829f44e6aeeee4208e9239a` |
| unverified unclassified | UnnamedContract<br>`0x54389e89a5ec1d4312d5b5c48055d6e56a177bf9` | non_address_book | unknown | unknown | unverified | n/a | `0x35d0c866c2c7866e1829f44e6aeeee4208e9239a` |
| unverified unclassified | UnnamedContract<br>`0x5969848719f7571bdfe0e899014c270ed39b8384` | non_address_book | unknown | unknown | unverified | n/a | `0x35d0c866c2c7866e1829f44e6aeeee4208e9239a` |
| unverified unclassified | UnnamedContract<br>`0x663855969c85f3be415807250414ca9129533a5f` | non_address_book | unknown | unknown | unverified | n/a | `0x35d0c866c2c7866e1829f44e6aeeee4208e9239a` |
| unverified unclassified | UnnamedContract<br>`0x6c5f77352d0bc084821a4b65f9ea756190ce6bb9` | non_address_book | unknown | unknown | unverified | n/a | `0x35d0c866c2c7866e1829f44e6aeeee4208e9239a` |
| unverified unclassified | UnnamedContract<br>`0x72987d1d393ba5b7d39fe671ada504e5b38281db` | non_address_book | unknown | unknown | unverified | n/a | `0x35d0c866c2c7866e1829f44e6aeeee4208e9239a` |
| unverified unclassified | UnnamedContract<br>`0x755ef56db57ebdbe4d2163cf9d784ed2859c08d9` | non_address_book | unknown | unknown | unverified | n/a | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| unverified unclassified | UnnamedContract<br>`0x7a11b4227ad6c4f926911c4c18212da0f0d6f390` | non_address_book | unknown | unknown | unverified | n/a | `0x35d0c866c2c7866e1829f44e6aeeee4208e9239a` |
| unverified unclassified | UnnamedContract<br>`0x86f1fcb32ac073951d3156929a93428902f30765` | non_address_book | unknown | unknown | unverified | n/a | `0x35d0c866c2c7866e1829f44e6aeeee4208e9239a` |
| unverified unclassified | UnnamedContract<br>`0x880af35e6172f9d4f3142cd9660498f2b6df337d` | non_address_book | unknown | unknown | unverified | n/a | `0x35d0c866c2c7866e1829f44e6aeeee4208e9239a` |
| unverified unclassified | UnnamedContract<br>`0x898ca9b3ef8b6a30da5fc7202f70e7992b3602b3` | non_address_book | unknown | unknown | unverified | n/a | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| unverified unclassified | UnnamedContract<br>`0x8b279458b44e4f27be534a1ddb76f93bf951b106` | non_address_book | unknown | unknown | unverified | n/a | `0x35d0c866c2c7866e1829f44e6aeeee4208e9239a` |
| unverified unclassified | UnnamedContract<br>`0x9656158b18bc67ed62ece17b385ac2a696513010` | non_address_book | unknown | unknown | unverified | n/a | `0x35d0c866c2c7866e1829f44e6aeeee4208e9239a` |
| unverified unclassified | UnnamedContract<br>`0x97261e57f4efb769dc39f142668d7f3ff7157302` | non_address_book | unknown | unknown | unverified | n/a | `0x35d0c866c2c7866e1829f44e6aeeee4208e9239a` |
| unverified unclassified | UnnamedContract<br>`0xa6ec3c5a9124f9fd9ce02b24ed41cfd3489f05c3` | non_address_book | unknown | unknown | unverified | n/a | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| unverified unclassified | UnnamedContract<br>`0xc3ebaf03ddd8f757963cab15ec498c74c0f56e1e` | non_address_book | unknown | unknown | unverified | n/a | `0x35d0c866c2c7866e1829f44e6aeeee4208e9239a` |
| unverified unclassified | UnnamedContract<br>`0xd5327ed4d20dc5d5634121ab8245adfd37b85711` | non_address_book | unknown | unknown | unverified | n/a | `0x35d0c866c2c7866e1829f44e6aeeee4208e9239a` |
| unverified unclassified | UnnamedContract<br>`0xdadae9ead2112c715480877ff2fe196f4af1abc5` | non_address_book | unknown | unknown | unverified | n/a | `0x35d0c866c2c7866e1829f44e6aeeee4208e9239a` |
| unverified unclassified | UnnamedContract<br>`0xe0351caae70b5adbd0107cd5331ad1d79c4c1ca1` | non_address_book | unknown | unknown | unverified | n/a | `0x35d0c866c2c7866e1829f44e6aeeee4208e9239a` |
| unverified unclassified | UnnamedContract<br>`0xe2d12af6f5339098437986980faea24eb0b4c7e0` | non_address_book | unknown | unknown | unverified | n/a | `0x35d0c866c2c7866e1829f44e6aeeee4208e9239a` |
| unverified unclassified | UnnamedContract<br>`0xf72c446694080da37a7f6f22f8034192f2a87eba` | non_address_book | unknown | unknown | unverified | n/a | `0x35d0c866c2c7866e1829f44e6aeeee4208e9239a` |
| unverified unclassified | UnnamedContract<br>`0xfe80d611c6403f70e5b1b9b722d2b3510b740b2b` | non_address_book | unknown | unknown | unverified | n/a | `0xc493bd1d8d794357e79da84613b67533afc4d337` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-Artemis-v1.0.pdf](https://79226619-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F198urHxz9fLDSymBGOYf%2Fuploads%2F7DxuyRfKvFSf1kTGkLwN%2FPeckShield-Audit-Report-Artemis-v1.0.pdf) | PeckShield | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [PeckShield-Audit-Report-Artemis-v1.0.pdf](https://79226619-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F198urHxz9fLDSymBGOYf%2Fuploads%2FvfYMfFs0CegB7fiDbEY1%2FPeckShield-Audit-Report-Artemis-v1.0.pdf) | PeckShield | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Artemis_GOAT_Audit_Report_by_WatchPug.pdf](https://79226619-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F198urHxz9fLDSymBGOYf%2Fuploads%2Fj7xRiPEECoBznYCVViXZ%2FArtemis_GOAT_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2025-01 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 7 | high |
| [Artmetis_GOAT_Update_Audit_Report_by_WatchPug.pdf](https://79226619-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F198urHxz9fLDSymBGOYf%2Fuploads%2FuzfwiX1PeIuSJkY9Wnzp%2FArtmetis_GOAT_Update_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [Artemis___Migrate_Locking_Audit_Report_by_WatchPug.pdf](https://79226619-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F198urHxz9fLDSymBGOYf%2Fuploads%2F3CwTyqdsSdVS2VdzLuqe%2FArtemis___Migrate_Locking_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2025-02 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 5 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19452] PeckShield-Audit-Report-Artemis-v1.0.pdf — no match: Contracts extracted from findings sections; no explicit scope table listing all contracts, but these are the contracts discussed in findings.
- [19453] PeckShield-Audit-Report-Artemis-v1.0.pdf — no match: Scope explicitly lists AMTDepositPool.sol, AMTWithdrawalManager.sol, StakingPool.sol, and L1/StakingPoolManager.sol. Audit date is July 27, 2024 from cover page.
- [19454] Artemis_GOAT_Audit_Report_by_WatchPug.pdf — matched: Extracted contract names from findings and scope summary. Audit date from delivery date.
- [19455] Artmetis_GOAT_Update_Audit_Report_by_WatchPug.pdf — no match: Only Swap.sol is explicitly referenced in findings; no formal scope section or contract listing provided.
- [19456] Artemis___Migrate_Locking_Audit_Report_by_WatchPug.pdf — matched: Extracted from audit report summary and findings sections. Main contracts: SequencerPool, DepositPool, LockingDelegator, Locking, IncentivePool, SequencerPoolManager.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-Artemis-v1.0.pdf | StakingPool | unmatched — not counted | — | mentioned in findings PVE-001, PVE-002, PVE-003 | no |
| PeckShield-Audit-Report-Artemis-v1.0.pdf | StakingPoolManager | unmatched — not counted | — | mentioned in findings PVE-002, PVE-003 | no |
| PeckShield-Audit-Report-Artemis-v1.0.pdf | AMTDepositPool | unmatched — not counted | — | mentioned in finding PVE-002 | no |
| PeckShield-Audit-Report-Artemis-v1.0.pdf | AMTRewardPool | unmatched — not counted | — | mentioned in finding PVE-002 | no |
| PeckShield-Audit-Report-Artemis-v1.0.pdf | AMTDepositPool | unmatched — not counted | — | listed in scope | no |
| PeckShield-Audit-Report-Artemis-v1.0.pdf | AMTWithdrawalManager | unmatched — not counted | — | listed in scope | no |
| PeckShield-Audit-Report-Artemis-v1.0.pdf | StakingPool | unmatched — not counted | — | listed in scope | no |
| PeckShield-Audit-Report-Artemis-v1.0.pdf | StakingPoolManager | unmatched — not counted | — | listed in scope | no |
| Artemis_GOAT_Audit_Report_by_WatchPug.pdf | DepositPool | unmatched — not counted | — | mentioned in findings and scope | no |
| Artemis_GOAT_Audit_Report_by_WatchPug.pdf | RewardPool | unmatched — not counted | — | mentioned in findings | no |
| Artemis_GOAT_Audit_Report_by_WatchPug.pdf | WithdrawalManager | unmatched — not counted | — | mentioned in findings | no |
| Artemis_GOAT_Audit_Report_by_WatchPug.pdf | SequencerPoolManager | own contract | MerkleDistributorFactory (selected) `0xb2d167eb1fff17ebd727b0a21e7f5f50424264c8` — deployed 2024-04-10 12:49:29+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Artemis_GOAT_Audit_Report_by_WatchPug.pdf | TransferHelper | unmatched — not counted | — | mentioned in WP-H2 | no |
| Artemis_GOAT_Audit_Report_by_WatchPug.pdf | ISequencerPool | unmatched — not counted | — | mentioned in WP-C1 | no |
| Artemis_GOAT_Audit_Report_by_WatchPug.pdf | IERC20MintBurn | unmatched — not counted | — | mentioned in WP-C1 | no |
| Artemis_GOAT_Audit_Report_by_WatchPug.pdf | DoubleEndedQueue | unmatched — not counted | — | mentioned in WP-L6 | no |
| Artmetis_GOAT_Update_Audit_Report_by_WatchPug.pdf | Swap | unmatched — not counted | — | mentioned in findings [WP-L3] and [WP-N4] as Swap.sol | no |
| Artemis___Migrate_Locking_Audit_Report_by_WatchPug.pdf | SequencerPool | unmatched — not counted | — | listed in scope and findings | no |
| Artemis___Migrate_Locking_Audit_Report_by_WatchPug.pdf | DepositPool | unmatched — not counted | — | listed in findings | no |
| Artemis___Migrate_Locking_Audit_Report_by_WatchPug.pdf | LockingDelegator | unmatched — not counted | — | mentioned in findings as contract | no |
| Artemis___Migrate_Locking_Audit_Report_by_WatchPug.pdf | Locking | unmatched — not counted | — | mentioned in findings as contract | no |
| Artemis___Migrate_Locking_Audit_Report_by_WatchPug.pdf | IncentivePool | unmatched — not counted | — | mentioned in findings as contract | no |
| Artemis___Migrate_Locking_Audit_Report_by_WatchPug.pdf | SequencerPoolManager | own contract | MerkleDistributorFactory (selected) `0xb2d167eb1fff17ebd727b0a21e7f5f50424264c8` — deployed 2024-04-10 12:49:29+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 59 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 21 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4, low=1
- Match method counts: unique_name=2

Zero-match audit list:

- [19452] PeckShield-Audit-Report-Artemis-v1.0.pdf
- [19453] PeckShield-Audit-Report-Artemis-v1.0.pdf
- [19455] Artmetis_GOAT_Update_Audit_Report_by_WatchPug.pdf

Fork inheritance lineage and inherited audits are included when available.
