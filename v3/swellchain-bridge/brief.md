# Agentic Audit Brief: Swellchain Bridge

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Swellchain Bridge (`swellchain-bridge`)
- Website: [https://superbridge.swellnetwork.io](https://superbridge.swellnetwork.io)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 153 unique implementations (171 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $261,947.07
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

The closed normalized authority records no EVM contract logic or eligible security audit for this project. This is an explicit cohort state, not a skipped export.

## Project Description

No contract logic was present for Swellchain Bridge in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Outside the address book: 153 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 3 standard proxy/library)
- Proxy deployments represented within implementation groups: 18
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/35
- Verified + Unaudited implementations: 35
- Verified by bytecode match: 0
- Unverified implementations: 118
- Unique implementations: 153
- Raw deployments: 171
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

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Accountant | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x15a94d49fac6e23e17c1366c999117a1de8ba7b6`; ethereum `0x48dacb0b938aa6d5752ca2ea23cd8593fafb3825` | ⚠️ Unaudited |
| AddressManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa54a84f17c2180148c762d79bc57bdff7fdafc8a` | ⚠️ Unaudited |
| AnchorStateRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x14387438ee964e826a4eaeb95b2bce7754174dd1` | ⚠️ Unaudited |
| DelayedWithdraw | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x755a078dee1c264a3053f02cd634e750d505cf85`; ethereum `0x805c6d95c9e707332215f42cb89f93752ffa55b8`; ethereum `0xec6de7031ce1a284d13b551ef8c4c04b6fdf773c` | ⚠️ Unaudited |
| DisputeGameFactory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x87690676786cdc8cca75a472e483af7c8f2f0f57` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x5a0aae59d09fccbddb6c6cceb07b7279367c3d2a` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x9ba6e03d8b90de867373db8cf1a58d2f7f006b3a` | ⚠️ Unaudited |
| Keeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2a55871a713fb98a6b60e2e76fc94021c9f182f` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe6a99ef12995defc5ff47ec0e13252f0e6903759` | ⚠️ Unaudited |
| L1ERC20TokenBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7e97935fbdf2a27ea35c4fdddacf5acd685e65a2`; ethereum `0xecf3376512edaca4fbb63d2c67d12a0397d24121` | ⚠️ Unaudited |
| L1ERC721Bridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xfd7618330e63b493070dc8c491ad4ad26144bc1e` | ⚠️ Unaudited |
| L1StandardBridge | bridge_template | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x7aa4960908b13d104bf056b23e2c76b43c5aacc8` | ⚠️ Unaudited |
| MIPS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16e83ce5ce29bf90ad9da06d2fe6a15d5f344ce4` | ⚠️ Unaudited |
| OFTAdapterSwETH | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c1b3426e557d6756d8a8859a0779373236f94e2` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc2b228cd433ebae788de287ede2abe55b3f3f603` | ⚠️ Unaudited |
| OptimismPortal2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x758e0ee66102816f5c3ec9ecc1188860fbb87812` | ⚠️ Unaudited |
| OracleAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa419026809e2d13bc73dee13992e7873ab605981` | ⚠️ Unaudited |
| PermissionedDisputeGame | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0cfbe3402d6e0a74e96d3c360f74d5ea4fa6893` | ⚠️ Unaudited |
| PreimageOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c065e11870b891d214bc2da7ef1f9ddfa1be277` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x4c4710a4ec3f514a492cc6460818c4a6a6269dd6`; ethereum `0x6748220a79446867eb41a824b4f74a92fc0931a9`; ethereum `0x95e8bacd0449a513d954d2ccb5ef48b8ed151ef6` | ⚠️ Unaudited |
| RegistryFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x939f1cc163fdc38a77571019eb4ad1794873bf8c`; ethereum `0xff22ea467301010f1364fc154c13e0c86fcfb077` | ⚠️ Unaudited |
| ReleaseRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5bd444ad23e02376f8fbba47e3cc9d2cadb6c4f6`; ethereum `0x70f8ac14dfdec437aba5e30c7b509dd01e1da901` | ⚠️ Unaudited |
| RoleManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x1bb44f9d91b4276621550aeea5d2d96279975bf3`; ethereum `0x8413e65374fca711af5eaddcf7191461a1f4d6af`; ethereum `0xa1a3257813ed45d91e9c45e03c66fcdd54b4e7c1`; ethereum `0xd905418c46d8141dd80ba065e694abd4dfd5b4a1` | ⚠️ Unaudited |
| RolesAuthority | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2db7583852c700549b710fd79dd1b54af2efa4dd`; ethereum `0x9d663f1dd3cb752b47301abdc22d620d1868f377`; ethereum `0xa9bd691b166aafcc9ef55aabc1960825630558d6` | ⚠️ Unaudited |
| RSwellOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x428cda6c1994b926f75a4830d5baedee9db2ac58` | ⚠️ Unaudited |
| Safe | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x06f7fb1c74147e34fce04a6828c7bf809b038d0e` | ⚠️ Unaudited |
| SuperchainConfig | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x95703e0982140d16f8eba6d158fccede42f04a4c` | ⚠️ Unaudited |
| SwBtcOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x584cd37ba4ab54f074f1067c1f51cce8e6e7dae2`; ethereum `0xa5bd95bfd47d439ce544bcc22b642bf46a2aa3e2` | ⚠️ Unaudited |
| SwellOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09341022ea237a4db1644de7ccf8fa0e489d85b7` | ⚠️ Unaudited |
| SwETHOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9b07fb810ef909b01f959911cef2cc834433f562`; ethereum `0xd98f5cd9699d2824149015985df21cc568c27b5e` | ⚠️ Unaudited |
| SymbioticAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 3 deployments: ethereum `0x2a6a2beebf6d65e03246087a41812db1c5c0caf8`; ethereum `0x69dda92dd42040c1290a7870b9fc1dc05e41836a`; ethereum `0x9e07af58c4c8893b0509e5d6d0ab8c92083fdae7` | ⚠️ Unaudited |
| SystemConfig | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd3d4c6b703978a5d24fecf3a70a51127667ff1a4` | ⚠️ Unaudited |
| TokenizedStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x473f0adec308dc82440665d9fc7d5e26ebcf0e05` | ⚠️ Unaudited |
| TokenizedStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x8041ba598f0e656ebe80c67289efb42c09e86ae3` | ⚠️ Unaudited |
| WithdrawLimitModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4c86cb5cd701cbf2364f25ed9563ff3d3d493c22`; ethereum `0xa2ed40f46c391ddd30094e866aac913a20f17216` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (118)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0000000000000000000000000000000000000000` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-171000 | `0x00000000000c2e074ec69a0dfb2997ba6c7d2e1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01cc9bf8388ad0b1d894a5a1db3c192af35bdaa2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04595c25e4bf27b8176c81c74a0081c7975cfecc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0475cbcaebd9ce8afa5025828d5b98dfb67e059e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05cc379ebd9b30bba19c6fa282ab29218ec61d84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x074c93cd956b0dd2cac0f9f11dda4d3893a88149` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07c51ddd38f192221fbe48f97cbe31a54c3b8637` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x084b1c3c81545d370f3634392de611caabff8148` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ce08a41bdb10420fb5cac7da8ca508ea313aef8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d3b4af7f0f89c67163e5a301ba1b37a16c968f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19009debf8954b610f207d5925eede827805986e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1dfc611d8c365b7efb797149b0ebfd6b43ab3aeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fe3fdd1f0193dd657c0a9aac37314d6b479e557` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x203daa777526c1cbf96efbd6c42017ff4437b1eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20814c8e689187dff7c93a9239ea22385d13b9f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x283af0b28c62c092c9727f1ee09c02ca627eb7f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x283f227c4bd38ece252c4ae7ece650b0e913f1f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-171001 | `0x3154cf16ccdb4c6d922629664174b904d80f2c35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3311ac7f72bb4108d9f4d5d50e7623b1498a9ec0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b02631b249478f7155c8c90f0b0328e13aa8ee7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ca5ccc96648d016d41c5af40eed82202bd019cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d2c2f8f95caba644ea25319c4c08594b8dc0359` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e8a0b63f57e975c268d610ece93da5f78c01321` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f3c0f6bc115e698e35038e1759e9c31032e590c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4018aba1a9eeebf20d79995e54843eee683bda7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-171002 | `0x4200000000000000000000000000000000000007` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-171003 | `0x420000000000000000000000000000000000000f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-171004 | `0x4200000000000000000000000000000000000010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-171005 | `0x4200000000000000000000000000000000000014` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-171006 | `0x4200000000000000000000000000000000000015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-171007 | `0x4200000000000000000000000000000000000016` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43451afd997c79b5b04f17911ec02947913a757f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-171008 | `0x43edb88c4b80fdd2adff2412a7bebf9df42cb40e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4519f528cf0f500c737c0e11b73bdb23979467a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-171009 | `0x49048044d57e1c92a77f79988d21fa8faf74e97e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4949bce0eff9bf3cec9ba19887842c8556aa63e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b9572c03aaa8b0efa4b4b0f0cc0f0992bedb898` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d0220892e265bbdb6e4c18be3f7083f4fd86d50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d9078db7220a2be74f8eddf3de98a76910a6d24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52a4b8fe88c1af11648c86ca8244de8a9a6b1df9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x547af78b28290d4158c1064ff092abbcc4cbfd97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-171010 | `0x56315b90c40730925ec5485cf004d835058518a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57f1887a8bf19b14fc0df6fd9b2acc9af147ea85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59e16fccd424cc24e280be16e11bcd56fb0ce547` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a9236e72a66d3e08b83dcf489b4d850792b6009` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fb30336a8d0841cf15d452afa297cb6d10877d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x608d94945a64503e642e6370ec598e519a2c1e53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60c7c2a24b5e86c38639fd1586917a8fef66a56d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60f1ea7b3359a4008655df44560b6899b1877a15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61f50a76bfb2ad8620a3e8f81aa27f3beb1db0d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6481ff79597fe4f77e1063f615ec5bdaddeffd4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64969fb44091a7e5fa1213d30d7a7e8488edf693` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x663fd2c5da1c63e4142b54c7f256578686f4fbc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x664569928201d464045aa0a7dd61d517eed5b3d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68c1e1f76f2564d886f24b28de6dc53f5078bda9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7237343c2a746aa2940e5e4fbd53eafbf3049dca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73a79fab69143498ed3712e519a88a918e1f4072` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74e20bd2a1fe0cdbe45b9a1d89cb7e0a45b36376` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75d33a75f7948383f376b0ea59e0d828242e08dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x794776f5b8bf21a3d2a95cebef16989f6d97f4e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f49a74d264e48e64e76e136b2a4ba1310c3604c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81c4bd600793ebd1c0323604e1f455fe50a951f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x866e82a600a1414e583f7f13623f1ac5d58b0afa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a92ad7b599801a776ad7f75b3aab77a3f279e25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ac37e026b65fc97b0c8f200250b595fdbd313d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cab227b1162f03b8338331adaad7aadc83b895e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8efb6b5c4767b09dc9aa6af4eaa89f749522bae2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f4a25afc1c36c69069bd4a8b3a2e18fb8897184` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9380f1974d2b7064ea0c0ec251968d8c69f0ae31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x949842adb5ef1d348f95eb56bf1591c718ac39b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98659f5c3e7e47d99fea0bfb34d469a01097017b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fdb5f24b24fe20375b03f5b3e744970d50dc368` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa12159e5131b1eef6b4857eee3e1954744b5033a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2c122be93b0074270ebee7f6b7292c7deb45047` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2f2ac6f5af72e494a227d79db20473cf7a1ffe8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2f428617a523837d4adc81c67a296d42fd95e86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7d635c8de9a58a228aa69353a1699c7cc240dcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab528d626ec275e3fad363ff1393a41f581c5897` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabd80e8a13596feea40fd26fd6a24c3fe76f05fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac3cedf010b3a51b4a8ea434e9c8c855dd6c8ac2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1ac02e00d654c2915235c558b62ea3299a95a10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb29e5ae7cb209836afde0038e30f0dc4236a2eff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2f80e0760b767a73835e37446124a5b78019117` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb85fe401c98aa0d464c8f6bed4778ed61f2152b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8e00fbd4431058f3d41a7c237d58f382b9fd23e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbd5b95a77dbf8bde35b9f837aaf2828d724d466` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd02dce787564fa208ece8176af372f4bd7345bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0497e381f536be9ce14b0dd3817cbcae57d2f62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc34642296af92f2f1100b24844b7db8d7099d296` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4842814ca523e481ca5aa85f719fed1e9cac614` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc649947a460b135e6b9a70ee2fb429adbb529290` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc732449d62c58450a15d3034d256ab9759aa6a76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc800dbc8ff9796e58efba2d7b35028ddd1997e5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-171011 | `0xca11bde05977b3631167028862be2a173976ca11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca5c1ece28892019b6a459c1a834d765d43d6ea4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb57158b03351e37a6cec3db3bf359e84df49e18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd3c0194db74c23807d4b90a5181e1b28cf7007c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-171012 | `0xce01f8eee7e479c928f8919abd53e553a36cef67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1e3fac3837b85437530b8b5244e4def43219c04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd38bf7c18c25ac1b4ce2cc077cbc35b2b97f01e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdaaf96c344f63131acadd0ea35170e7892d3dfba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb9091e48b1c42992a1213e6916184f9ebdbfedf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbe6b6ccfa97860780f64ae4de394f6017644f89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf518077bd12c33ac35bb6f387e7c3309ec1c646` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfd649caa0bd0554f23dff79371c797daae60bfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4acdd618deed4e6d2f03b9bf62dc6118fc9a4da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe65d8aaf34cb91087d1598e0a15b582f57f217d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7b39428aba5040d47915abfb0d2f566d508b316` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea6407e845bf7a462fbdb3584728a9f617da7fe9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed69aaec0eda5feccffa8c056f19e9389b430189` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed73a03f19e8d849e44a39252d222c6ad5217e1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedc972637e77164b3e2755e11907ecc1a8940ff0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf29100983e058b709f3d539b0c765937b804ac15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf774e864413b46f43a889a5ea59b3551d6027836` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf83c8b82f68aa6e7b9aafe0f10c286317ada7fff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9edb1a21867ac11b023ce34abad916d29abf107` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff1ca69a596c7a471bd26c05cac4ee0facb31c68` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 136
- Live contracts: 0
- Unknown liveness contracts: 136
- Source-verified contracts: 32
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=13, contamination review=13, source verified unclassified=6, unverified unclassified=104

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | unverified unclassified | UnnamedContract<br>`0x04595c25e4bf27b8176c81c74a0081c7975cfecc` | non_address_book | unknown | unknown | unverified | n/a | `0x4b7fcc44f12b1f7a61d0e5f34521cf37e38e23e5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x07c51ddd38f192221fbe48f97cbe31a54c3b8637` | non_address_book | unknown | unknown | unverified | n/a | `0x4b7fcc44f12b1f7a61d0e5f34521cf37e38e23e5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x19009debf8954b610f207d5925eede827805986e` | non_address_book | unknown | unknown | unverified | n/a | `0x4b7fcc44f12b1f7a61d0e5f34521cf37e38e23e5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3e8a0b63f57e975c268d610ece93da5f78c01321` | non_address_book | unknown | unknown | unverified | n/a | `0x4b7fcc44f12b1f7a61d0e5f34521cf37e38e23e5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4018aba1a9eeebf20d79995e54843eee683bda7f` | non_address_book | unknown | unknown | unverified | n/a | `0x4b7fcc44f12b1f7a61d0e5f34521cf37e38e23e5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4d9078db7220a2be74f8eddf3de98a76910a6d24` | non_address_book | unknown | unknown | unverified | n/a | `0x4b7fcc44f12b1f7a61d0e5f34521cf37e38e23e5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x60f1ea7b3359a4008655df44560b6899b1877a15` | non_address_book | unknown | unknown | unverified | n/a | `0x4b7fcc44f12b1f7a61d0e5f34521cf37e38e23e5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x663fd2c5da1c63e4142b54c7f256578686f4fbc4` | non_address_book | unknown | unknown | unverified | n/a | `0x4b7fcc44f12b1f7a61d0e5f34521cf37e38e23e5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x664569928201d464045aa0a7dd61d517eed5b3d5` | non_address_book | unknown | unknown | unverified | n/a | `0x4b7fcc44f12b1f7a61d0e5f34521cf37e38e23e5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x98659f5c3e7e47d99fea0bfb34d469a01097017b` | non_address_book | unknown | unknown | unverified | n/a | `0x4b7fcc44f12b1f7a61d0e5f34521cf37e38e23e5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9fdb5f24b24fe20375b03f5b3e744970d50dc368` | non_address_book | unknown | unknown | unverified | n/a | `0x4b7fcc44f12b1f7a61d0e5f34521cf37e38e23e5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa2f2ac6f5af72e494a227d79db20473cf7a1ffe8` | non_address_book | unknown | unknown | unverified | n/a | `0x4b7fcc44f12b1f7a61d0e5f34521cf37e38e23e5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb2f80e0760b767a73835e37446124a5b78019117` | non_address_book | unknown | unknown | unverified | n/a | `0x4b7fcc44f12b1f7a61d0e5f34521cf37e38e23e5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb8e00fbd4431058f3d41a7c237d58f382b9fd23e` | non_address_book | unknown | unknown | unverified | n/a | `0x4b7fcc44f12b1f7a61d0e5f34521cf37e38e23e5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbbd5b95a77dbf8bde35b9f837aaf2828d724d466` | non_address_book | unknown | unknown | unverified | n/a | `0x4b7fcc44f12b1f7a61d0e5f34521cf37e38e23e5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc34642296af92f2f1100b24844b7db8d7099d296` | non_address_book | unknown | unknown | unverified | n/a | `0x4b7fcc44f12b1f7a61d0e5f34521cf37e38e23e5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc732449d62c58450a15d3034d256ab9759aa6a76` | non_address_book | unknown | unknown | unverified | n/a | `0x4b7fcc44f12b1f7a61d0e5f34521cf37e38e23e5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcd3c0194db74c23807d4b90a5181e1b28cf7007c` | non_address_book | unknown | unknown | unverified | n/a | `0x4b7fcc44f12b1f7a61d0e5f34521cf37e38e23e5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdb9091e48b1c42992a1213e6916184f9ebdbfedf` | non_address_book | unknown | unknown | unverified | n/a | `0x4b7fcc44f12b1f7a61d0e5f34521cf37e38e23e5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf774e864413b46f43a889a5ea59b3551d6027836` | non_address_book | unknown | unknown | unverified | n/a | `0x4b7fcc44f12b1f7a61d0e5f34521cf37e38e23e5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x084b1c3c81545d370f3634392de611caabff8148` | non_address_book | unknown | unknown | unverified | n/a | `0x4fe4e666be5752f1fdd210f4ab5de2cc26e3e0e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x283af0b28c62c092c9727f1ee09c02ca627eb7f5` | non_address_book | unknown | unknown | unverified | n/a | `0x4fe4e666be5752f1fdd210f4ab5de2cc26e3e0e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x57f1887a8bf19b14fc0df6fd9b2acc9af147ea85` | non_address_book | unknown | unknown | unverified | n/a | `0x4fe4e666be5752f1fdd210f4ab5de2cc26e3e0e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x60c7c2a24b5e86c38639fd1586917a8fef66a56d` | non_address_book | unknown | unknown | unverified | n/a | `0x4fe4e666be5752f1fdd210f4ab5de2cc26e3e0e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa2c122be93b0074270ebee7f6b7292c7deb45047` | non_address_book | unknown | unknown | unverified | n/a | `0x4fe4e666be5752f1fdd210f4ab5de2cc26e3e0e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa2f428617a523837d4adc81c67a296d42fd95e86` | non_address_book | unknown | unknown | unverified | n/a | `0x4fe4e666be5752f1fdd210f4ab5de2cc26e3e0e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xab528d626ec275e3fad363ff1393a41f581c5897` | non_address_book | unknown | unknown | unverified | n/a | `0x4fe4e666be5752f1fdd210f4ab5de2cc26e3e0e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdaaf96c344f63131acadd0ea35170e7892d3dfba` | non_address_book | unknown | unknown | unverified | n/a | `0x4fe4e666be5752f1fdd210f4ab5de2cc26e3e0e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe65d8aaf34cb91087d1598e0a15b582f57f217d9` | non_address_book | unknown | unknown | unverified | n/a | `0x4fe4e666be5752f1fdd210f4ab5de2cc26e3e0e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x01cc9bf8388ad0b1d894a5a1db3c192af35bdaa2` | non_address_book | unknown | unknown | unverified | n/a | `0x6606d3c20cc94cc7aa1d430c0e83a5129976153a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0475cbcaebd9ce8afa5025828d5b98dfb67e059e` | non_address_book | unknown | unknown | unverified | n/a | `0x6606d3c20cc94cc7aa1d430c0e83a5129976153a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x05cc379ebd9b30bba19c6fa282ab29218ec61d84` | non_address_book | unknown | unknown | unverified | n/a | `0x6606d3c20cc94cc7aa1d430c0e83a5129976153a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1dfc611d8c365b7efb797149b0ebfd6b43ab3aeb` | non_address_book | unknown | unknown | unverified | n/a | `0x6606d3c20cc94cc7aa1d430c0e83a5129976153a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1fe3fdd1f0193dd657c0a9aac37314d6b479e557` | non_address_book | unknown | unknown | unverified | n/a | `0x6606d3c20cc94cc7aa1d430c0e83a5129976153a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3311ac7f72bb4108d9f4d5d50e7623b1498a9ec0` | non_address_book | unknown | unknown | unverified | n/a | `0x6606d3c20cc94cc7aa1d430c0e83a5129976153a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3b02631b249478f7155c8c90f0b0328e13aa8ee7` | non_address_book | unknown | unknown | unverified | n/a | `0x6606d3c20cc94cc7aa1d430c0e83a5129976153a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3d2c2f8f95caba644ea25319c4c08594b8dc0359` | non_address_book | unknown | unknown | unverified | n/a | `0x6606d3c20cc94cc7aa1d430c0e83a5129976153a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3f3c0f6bc115e698e35038e1759e9c31032e590c` | non_address_book | unknown | unknown | unverified | n/a | `0x6606d3c20cc94cc7aa1d430c0e83a5129976153a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x43451afd997c79b5b04f17911ec02947913a757f` | non_address_book | unknown | unknown | unverified | n/a | `0x6606d3c20cc94cc7aa1d430c0e83a5129976153a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4519f528cf0f500c737c0e11b73bdb23979467a7` | non_address_book | unknown | unknown | unverified | n/a | `0x6606d3c20cc94cc7aa1d430c0e83a5129976153a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4949bce0eff9bf3cec9ba19887842c8556aa63e3` | non_address_book | unknown | unknown | unverified | n/a | `0x6606d3c20cc94cc7aa1d430c0e83a5129976153a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x52a4b8fe88c1af11648c86ca8244de8a9a6b1df9` | non_address_book | unknown | unknown | unverified | n/a | `0x6606d3c20cc94cc7aa1d430c0e83a5129976153a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5fb30336a8d0841cf15d452afa297cb6d10877d7` | non_address_book | unknown | unknown | unverified | n/a | `0x6606d3c20cc94cc7aa1d430c0e83a5129976153a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x608d94945a64503e642e6370ec598e519a2c1e53` | non_address_book | unknown | unknown | unverified | n/a | `0x6606d3c20cc94cc7aa1d430c0e83a5129976153a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6481ff79597fe4f77e1063f615ec5bdaddeffd4b` | non_address_book | unknown | unknown | unverified | n/a | `0x6606d3c20cc94cc7aa1d430c0e83a5129976153a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7237343c2a746aa2940e5e4fbd53eafbf3049dca` | non_address_book | unknown | unknown | unverified | n/a | `0x6606d3c20cc94cc7aa1d430c0e83a5129976153a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x73a79fab69143498ed3712e519a88a918e1f4072` | non_address_book | unknown | unknown | unverified | n/a | `0x6606d3c20cc94cc7aa1d430c0e83a5129976153a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x75d33a75f7948383f376b0ea59e0d828242e08dd` | non_address_book | unknown | unknown | unverified | n/a | `0x6606d3c20cc94cc7aa1d430c0e83a5129976153a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x794776f5b8bf21a3d2a95cebef16989f6d97f4e6` | non_address_book | unknown | unknown | unverified | n/a | `0x6606d3c20cc94cc7aa1d430c0e83a5129976153a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x81c4bd600793ebd1c0323604e1f455fe50a951f8` | non_address_book | unknown | unknown | unverified | n/a | `0x6606d3c20cc94cc7aa1d430c0e83a5129976153a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x866e82a600a1414e583f7f13623f1ac5d58b0afa` | non_address_book | unknown | unknown | unverified | n/a | `0x6606d3c20cc94cc7aa1d430c0e83a5129976153a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8a92ad7b599801a776ad7f75b3aab77a3f279e25` | non_address_book | unknown | unknown | unverified | n/a | `0x6606d3c20cc94cc7aa1d430c0e83a5129976153a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8efb6b5c4767b09dc9aa6af4eaa89f749522bae2` | non_address_book | unknown | unknown | unverified | n/a | `0x6606d3c20cc94cc7aa1d430c0e83a5129976153a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x949842adb5ef1d348f95eb56bf1591c718ac39b6` | non_address_book | unknown | unknown | unverified | n/a | `0x6606d3c20cc94cc7aa1d430c0e83a5129976153a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xac3cedf010b3a51b4a8ea434e9c8c855dd6c8ac2` | non_address_book | unknown | unknown | unverified | n/a | `0x6606d3c20cc94cc7aa1d430c0e83a5129976153a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb1ac02e00d654c2915235c558b62ea3299a95a10` | non_address_book | unknown | unknown | unverified | n/a | `0x6606d3c20cc94cc7aa1d430c0e83a5129976153a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb29e5ae7cb209836afde0038e30f0dc4236a2eff` | non_address_book | unknown | unknown | unverified | n/a | `0x6606d3c20cc94cc7aa1d430c0e83a5129976153a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb85fe401c98aa0d464c8f6bed4778ed61f2152b7` | non_address_book | unknown | unknown | unverified | n/a | `0x6606d3c20cc94cc7aa1d430c0e83a5129976153a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbd02dce787564fa208ece8176af372f4bd7345bf` | non_address_book | unknown | unknown | unverified | n/a | `0x6606d3c20cc94cc7aa1d430c0e83a5129976153a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdbe6b6ccfa97860780f64ae4de394f6017644f89` | non_address_book | unknown | unknown | unverified | n/a | `0x6606d3c20cc94cc7aa1d430c0e83a5129976153a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdf518077bd12c33ac35bb6f387e7c3309ec1c646` | non_address_book | unknown | unknown | unverified | n/a | `0x6606d3c20cc94cc7aa1d430c0e83a5129976153a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdfd649caa0bd0554f23dff79371c797daae60bfb` | non_address_book | unknown | unknown | unverified | n/a | `0x6606d3c20cc94cc7aa1d430c0e83a5129976153a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf83c8b82f68aa6e7b9aafe0f10c286317ada7fff` | non_address_book | unknown | unknown | unverified | n/a | `0x6606d3c20cc94cc7aa1d430c0e83a5129976153a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xff1ca69a596c7a471bd26c05cac4ee0facb31c68` | non_address_book | unknown | unknown | unverified | n/a | `0x6606d3c20cc94cc7aa1d430c0e83a5129976153a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x074c93cd956b0dd2cac0f9f11dda4d3893a88149` | non_address_book | unknown | unknown | unverified | n/a | `0x69420f05a11f617b4b74ffe2e04b2d300dfa556f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0ce08a41bdb10420fb5cac7da8ca508ea313aef8` | non_address_book | unknown | unknown | unverified | n/a | `0x69420f05a11f617b4b74ffe2e04b2d300dfa556f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0d3b4af7f0f89c67163e5a301ba1b37a16c968f1` | non_address_book | unknown | unknown | unverified | n/a | `0x69420f05a11f617b4b74ffe2e04b2d300dfa556f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x203daa777526c1cbf96efbd6c42017ff4437b1eb` | non_address_book | unknown | unknown | unverified | n/a | `0x69420f05a11f617b4b74ffe2e04b2d300dfa556f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x20814c8e689187dff7c93a9239ea22385d13b9f1` | non_address_book | unknown | unknown | unverified | n/a | `0x69420f05a11f617b4b74ffe2e04b2d300dfa556f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x283f227c4bd38ece252c4ae7ece650b0e913f1f9` | non_address_book | unknown | unknown | unverified | n/a | `0x69420f05a11f617b4b74ffe2e04b2d300dfa556f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3ca5ccc96648d016d41c5af40eed82202bd019cc` | non_address_book | unknown | unknown | unverified | n/a | `0x69420f05a11f617b4b74ffe2e04b2d300dfa556f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4b9572c03aaa8b0efa4b4b0f0cc0f0992bedb898` | non_address_book | unknown | unknown | unverified | n/a | `0x69420f05a11f617b4b74ffe2e04b2d300dfa556f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4d0220892e265bbdb6e4c18be3f7083f4fd86d50` | non_address_book | unknown | unknown | unverified | n/a | `0x69420f05a11f617b4b74ffe2e04b2d300dfa556f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x547af78b28290d4158c1064ff092abbcc4cbfd97` | non_address_book | unknown | unknown | unverified | n/a | `0x69420f05a11f617b4b74ffe2e04b2d300dfa556f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x59e16fccd424cc24e280be16e11bcd56fb0ce547` | non_address_book | unknown | unknown | unverified | n/a | `0x69420f05a11f617b4b74ffe2e04b2d300dfa556f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5a9236e72a66d3e08b83dcf489b4d850792b6009` | non_address_book | unknown | unknown | unverified | n/a | `0x69420f05a11f617b4b74ffe2e04b2d300dfa556f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x61f50a76bfb2ad8620a3e8f81aa27f3beb1db0d7` | non_address_book | unknown | unknown | unverified | n/a | `0x69420f05a11f617b4b74ffe2e04b2d300dfa556f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x64969fb44091a7e5fa1213d30d7a7e8488edf693` | non_address_book | unknown | unknown | unverified | n/a | `0x69420f05a11f617b4b74ffe2e04b2d300dfa556f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x68c1e1f76f2564d886f24b28de6dc53f5078bda9` | non_address_book | unknown | unknown | unverified | n/a | `0x69420f05a11f617b4b74ffe2e04b2d300dfa556f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x74e20bd2a1fe0cdbe45b9a1d89cb7e0a45b36376` | non_address_book | unknown | unknown | unverified | n/a | `0x69420f05a11f617b4b74ffe2e04b2d300dfa556f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7f49a74d264e48e64e76e136b2a4ba1310c3604c` | non_address_book | unknown | unknown | unverified | n/a | `0x69420f05a11f617b4b74ffe2e04b2d300dfa556f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8ac37e026b65fc97b0c8f200250b595fdbd313d8` | non_address_book | unknown | unknown | unverified | n/a | `0x69420f05a11f617b4b74ffe2e04b2d300dfa556f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8cab227b1162f03b8338331adaad7aadc83b895e` | non_address_book | unknown | unknown | unverified | n/a | `0x69420f05a11f617b4b74ffe2e04b2d300dfa556f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8f4a25afc1c36c69069bd4a8b3a2e18fb8897184` | non_address_book | unknown | unknown | unverified | n/a | `0x69420f05a11f617b4b74ffe2e04b2d300dfa556f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9380f1974d2b7064ea0c0ec251968d8c69f0ae31` | non_address_book | unknown | unknown | unverified | n/a | `0x69420f05a11f617b4b74ffe2e04b2d300dfa556f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa12159e5131b1eef6b4857eee3e1954744b5033a` | non_address_book | unknown | unknown | unverified | n/a | `0x69420f05a11f617b4b74ffe2e04b2d300dfa556f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa7d635c8de9a58a228aa69353a1699c7cc240dcf` | non_address_book | unknown | unknown | unverified | n/a | `0x69420f05a11f617b4b74ffe2e04b2d300dfa556f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xabd80e8a13596feea40fd26fd6a24c3fe76f05fb` | non_address_book | unknown | unknown | unverified | n/a | `0x69420f05a11f617b4b74ffe2e04b2d300dfa556f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc0497e381f536be9ce14b0dd3817cbcae57d2f62` | non_address_book | unknown | unknown | unverified | n/a | `0x69420f05a11f617b4b74ffe2e04b2d300dfa556f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc4842814ca523e481ca5aa85f719fed1e9cac614` | non_address_book | unknown | unknown | unverified | n/a | `0x69420f05a11f617b4b74ffe2e04b2d300dfa556f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc649947a460b135e6b9a70ee2fb429adbb529290` | non_address_book | unknown | unknown | unverified | n/a | `0x69420f05a11f617b4b74ffe2e04b2d300dfa556f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc800dbc8ff9796e58efba2d7b35028ddd1997e5e` | non_address_book | unknown | unknown | unverified | n/a | `0x69420f05a11f617b4b74ffe2e04b2d300dfa556f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xca5c1ece28892019b6a459c1a834d765d43d6ea4` | non_address_book | unknown | unknown | unverified | n/a | `0x69420f05a11f617b4b74ffe2e04b2d300dfa556f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcb57158b03351e37a6cec3db3bf359e84df49e18` | non_address_book | unknown | unknown | unverified | n/a | `0x69420f05a11f617b4b74ffe2e04b2d300dfa556f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd1e3fac3837b85437530b8b5244e4def43219c04` | non_address_book | unknown | unknown | unverified | n/a | `0x69420f05a11f617b4b74ffe2e04b2d300dfa556f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd38bf7c18c25ac1b4ce2cc077cbc35b2b97f01e7` | non_address_book | unknown | unknown | unverified | n/a | `0x69420f05a11f617b4b74ffe2e04b2d300dfa556f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe4acdd618deed4e6d2f03b9bf62dc6118fc9a4da` | non_address_book | unknown | unknown | unverified | n/a | `0x69420f05a11f617b4b74ffe2e04b2d300dfa556f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe7b39428aba5040d47915abfb0d2f566d508b316` | non_address_book | unknown | unknown | unverified | n/a | `0x69420f05a11f617b4b74ffe2e04b2d300dfa556f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xea6407e845bf7a462fbdb3584728a9f617da7fe9` | non_address_book | unknown | unknown | unverified | n/a | `0x69420f05a11f617b4b74ffe2e04b2d300dfa556f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xed69aaec0eda5feccffa8c056f19e9389b430189` | non_address_book | unknown | unknown | unverified | n/a | `0x69420f05a11f617b4b74ffe2e04b2d300dfa556f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xed73a03f19e8d849e44a39252d222c6ad5217e1e` | non_address_book | unknown | unknown | unverified | n/a | `0x69420f05a11f617b4b74ffe2e04b2d300dfa556f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xedc972637e77164b3e2755e11907ecc1a8940ff0` | non_address_book | unknown | unknown | unverified | n/a | `0x69420f05a11f617b4b74ffe2e04b2d300dfa556f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf29100983e058b709f3d539b0c765937b804ac15` | non_address_book | unknown | unknown | unverified | n/a | `0x69420f05a11f617b4b74ffe2e04b2d300dfa556f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf9edb1a21867ac11b023ce34abad916d29abf107` | non_address_book | unknown | unknown | unverified | n/a | `0x69420f05a11f617b4b74ffe2e04b2d300dfa556f` |
| ethereum | candidate review | Accountant<br>`0x15a94d49fac6e23e17c1366c999117a1de8ba7b6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xaf994551f4f940224825f54f810ed5439651e5f9` |
| ethereum | candidate review | Accountant<br>`0x48dacb0b938aa6d5752ca2ea23cd8593fafb3825` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xaf994551f4f940224825f54f810ed5439651e5f9` |
| ethereum | candidate review | OssifiableProxy<br>`0xecf3376512edaca4fbb63d2c67d12a0397d24121` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xaf994551f4f940224825f54f810ed5439651e5f9` |
| ethereum | candidate review | ProxyAdmin<br>`0x6748220a79446867eb41a824b4f74a92fc0931a9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xaf994551f4f940224825f54f810ed5439651e5f9` |
| ethereum | candidate review | ProxyAdmin<br>`0x95e8bacd0449a513d954d2ccb5ef48b8ed151ef6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xaf994551f4f940224825f54f810ed5439651e5f9` |
| ethereum | candidate review | RoleManager<br>`0x1bb44f9d91b4276621550aeea5d2d96279975bf3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xaf994551f4f940224825f54f810ed5439651e5f9` |
| ethereum | candidate review | RoleManager<br>`0x8413e65374fca711af5eaddcf7191461a1f4d6af` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xaf994551f4f940224825f54f810ed5439651e5f9` |
| ethereum | candidate review | RoleManager<br>`0xa1a3257813ed45d91e9c45e03c66fcdd54b4e7c1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xaf994551f4f940224825f54f810ed5439651e5f9` |
| ethereum | candidate review | RoleManager<br>`0xd905418c46d8141dd80ba065e694abd4dfd5b4a1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xaf994551f4f940224825f54f810ed5439651e5f9` |
| ethereum | candidate review | SwBtcOFTAdapter<br>`0xa5bd95bfd47d439ce544bcc22b642bf46a2aa3e2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xaf994551f4f940224825f54f810ed5439651e5f9` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0x2a6a2beebf6d65e03246087a41812db1c5c0caf8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xaf994551f4f940224825f54f810ed5439651e5f9` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0x69dda92dd42040c1290a7870b9fc1dc05e41836a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xaf994551f4f940224825f54f810ed5439651e5f9` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0x9e07af58c4c8893b0509e5d6d0ab8c92083fdae7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xaf994551f4f940224825f54f810ed5439651e5f9` |
| ethereum | contamination review | AeraStrategy<br>`0x473f0adec308dc82440665d9fc7d5e26ebcf0e05` | non_address_book | unknown | unknown | verified | n/a | `0xaf994551f4f940224825f54f810ed5439651e5f9` |
| ethereum | contamination review | AeraStrategy<br>`0x8041ba598f0e656ebe80c67289efb42c09e86ae3` | non_address_book | unknown | unknown | verified | n/a | `0xaf994551f4f940224825f54f810ed5439651e5f9` |
| ethereum | contamination review | DelayedWithdraw<br>`0x755a078dee1c264a3053f02cd634e750d505cf85` | non_address_book | unknown | unknown | verified | n/a | `0xaf994551f4f940224825f54f810ed5439651e5f9` |
| ethereum | contamination review | DelayedWithdraw<br>`0x805c6d95c9e707332215f42cb89f93752ffa55b8` | non_address_book | unknown | unknown | verified | n/a | `0xaf994551f4f940224825f54f810ed5439651e5f9` |
| ethereum | contamination review | DelayedWithdraw<br>`0xec6de7031ce1a284d13b551ef8c4c04b6fdf773c` | non_address_book | unknown | unknown | verified | n/a | `0xaf994551f4f940224825f54f810ed5439651e5f9` |
| ethereum | contamination review | Keeper<br>`0xc2a55871a713fb98a6b60e2e76fc94021c9f182f` | non_address_book | unknown | unknown | verified | n/a | `0xaf994551f4f940224825f54f810ed5439651e5f9` |
| ethereum | contamination review | OracleAdapter<br>`0xa419026809e2d13bc73dee13992e7873ab605981` | non_address_book | unknown | unknown | verified | n/a | `0xaf994551f4f940224825f54f810ed5439651e5f9` |
| ethereum | contamination review | RegistryFactory<br>`0x939f1cc163fdc38a77571019eb4ad1794873bf8c` | non_address_book | unknown | unknown | verified | n/a | `0xaf994551f4f940224825f54f810ed5439651e5f9` |
| ethereum | contamination review | RegistryFactory<br>`0xff22ea467301010f1364fc154c13e0c86fcfb077` | non_address_book | unknown | unknown | verified | n/a | `0xaf994551f4f940224825f54f810ed5439651e5f9` |
| ethereum | contamination review | ReleaseRegistry<br>`0x5bd444ad23e02376f8fbba47e3cc9d2cadb6c4f6` | non_address_book | unknown | unknown | verified | n/a | `0xaf994551f4f940224825f54f810ed5439651e5f9` |
| ethereum | contamination review | ReleaseRegistry<br>`0x70f8ac14dfdec437aba5e30c7b509dd01e1da901` | non_address_book | unknown | unknown | verified | n/a | `0xaf994551f4f940224825f54f810ed5439651e5f9` |
| ethereum | contamination review | WithdrawLimitModule<br>`0x4c86cb5cd701cbf2364f25ed9563ff3d3d493c22` | non_address_book | unknown | unknown | verified | n/a | `0xaf994551f4f940224825f54f810ed5439651e5f9` |
| ethereum | contamination review | WithdrawLimitModule<br>`0xa2ed40f46c391ddd30094e866aac913a20f17216` | non_address_book | unknown | unknown | verified | n/a | `0xaf994551f4f940224825f54f810ed5439651e5f9` |
| ethereum | source verified unclassified | L1ERC20TokenBridge<br>`0x7e97935fbdf2a27ea35c4fdddacf5acd685e65a2` | non_address_book | unknown | unknown | verified | n/a | `0xaf994551f4f940224825f54f810ed5439651e5f9` |
| ethereum | source verified unclassified | RolesAuthority<br>`0x2db7583852c700549b710fd79dd1b54af2efa4dd` | non_address_book | unknown | unknown | verified | n/a | `0xaf994551f4f940224825f54f810ed5439651e5f9` |
| ethereum | source verified unclassified | RolesAuthority<br>`0x9d663f1dd3cb752b47301abdc22d620d1868f377` | non_address_book | unknown | unknown | verified | n/a | `0xaf994551f4f940224825f54f810ed5439651e5f9` |
| ethereum | source verified unclassified | RolesAuthority<br>`0xa9bd691b166aafcc9ef55aabc1960825630558d6` | non_address_book | unknown | unknown | verified | n/a | `0xaf994551f4f940224825f54f810ed5439651e5f9` |
| ethereum | source verified unclassified | SwETHOFTAdapter<br>`0x9b07fb810ef909b01f959911cef2cc834433f562` | non_address_book | unknown | unknown | verified | n/a | `0xaf994551f4f940224825f54f810ed5439651e5f9` |
| ethereum | source verified unclassified | SwETHOFTAdapter<br>`0xd98f5cd9699d2824149015985df21cc568c27b5e` | non_address_book | unknown | unknown | verified | n/a | `0xaf994551f4f940224825f54f810ed5439651e5f9` |

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
| native | 31 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 118 |

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
